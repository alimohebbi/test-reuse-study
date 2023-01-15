import re
import glob
import os
from utils.utils import *
from utils.configuration import Configuration

config = Configuration()

def get_parsed_file_name(fname):
    subject_name = fname.split("/")[-1].split(".")[0] + '_parsed.json'
    return os.path.join(config.parsed_test_dir,"/".join(fname.split("/")[-4:-1]),subject_name)


def get_test_section(lines):
    seen_test = False
    test = []
    expression = ''
    for line in lines:
        if not seen_test and '@Test' in line:
            seen_test = True
        elif seen_test:
            if "private static Matcher<View> childAtPosition(" in line:
                break
            else:
                expression += line.strip()
                if ';' not in line:
                    continue
                test.append(expression.strip(" ").strip())
                expression = ''
    return test


def rearrange_lines(lines):
    for i, line in enumerate(lines):
        if '=' in line:
            sides = line.split('=')
            variable_name = sides[0].split(' ')[-1]
            if variable_name in lines[i + 1]:
                dot_index = lines[i + 1].find('.')
                lines[i] += lines[i + 1][dot_index:]
    return lines


def extract_check(actions, check):
    if re.sub('[ ()]', '', check) == "isDisplayed" or re.sub('[ ()]', '', check) == "isEnabled":
        actions.append(re.sub('[ ()]', '', check))
        actions.append("true")
    else:
        actions.append(re.search(r'with(.*?)\(', check).group(1).lower())
        actions.append(re.search(r'\"(.*?)\"', check).group(1))
    return actions


def extract_checks(line, parsed_event):
    value = []
    match_section = re.search(r'matches\((.*?)\)\);', line.split("check")[1]).group(1)
    actions = ["wait_until_element_presence", 10]
    if match_section.startswith("allOf"):
        checks = re.search(r'allOf\((.*?)\)\)', match_section).group(1).split(",")
        for check in checks:
            actions = extract_check(actions, check)
    else:
        actions = extract_check(actions, match_section)
    parsed_event["action"] = actions
    return parsed_event


def extract_perform(line, parsed_event):
    atm_actions = re.search(r'perform\((.*?)\)\;', line).group(1).split(",")
    atm_actions = [action for action in atm_actions if action.replace(" ", "") != "closeSoftKeyboard()"]
    actions = []
    for i in range(len(atm_actions)):
        atm_actions[i] = atm_actions[i].strip(" ")
        if "replaceText" in atm_actions[i]:
            actions.append("send_keys")
            actions.append(re.search(r'\"(.*?)\"', atm_actions[i]).group(1))
        elif atm_actions[i][:-2] == "longClick":
            actions.append("long_press")
        elif "swipe" in atm_actions[i]:
            direction = atm_actions[i][:-2].split("swipe")[1]
            actions.append("swipe_" + str(direction.lower()))
        else:
            actions.append(atm_actions[i][:-2])
    parsed_event["action"] = actions
    return parsed_event


def extract_action(parsed_event, line):
    if "onView" not in line:
        if "pressBack();" in line:
            parsed_event["action"] = ["KEY_BACK"]
    else:
        if "perform" in line:
            parsed_event = extract_perform(line, parsed_event)
        elif "check" in line:
            # Ignore if the action is oracle
            # return None
            parsed_event = extract_checks(line, parsed_event)
    return parsed_event


def remove_child_addressing(line):
    start = line.find("childAtPosition")
    if start == -1:
        return line
    cnt = 1
    for i in range(start + 16, len(line)):
        char = line[i]
        if char == "(":
            cnt += 1
        elif char == ")":
            cnt -= 1
        if cnt == 0:
            end = i
            break
    return line.replace(line[start:end + 2], "")


def get_selector_section(line):
    line = remove_child_addressing(line)
    if "perform" in line:
        selector_section = line.split("perform")[0][:-2]
    elif "check" in line:
        selector_section = line.split("check")[0][:-2]
    elif "pressBack();" in line:
        selector_section = ""
    return selector_section


def contains_id(line):
    return not re.search(r'R.id\.(.*?)\)', line) is None


def add_selector(selector, selector_list):
    if "isDisplayed()" in selector:
        widget_identifier = "displayed"
        value = "true"
    elif contains_id(selector):
        widget_identifier = "resource-id"
        value = re.search(r'R.id\.(.*?)\)', selector).group(1)
    elif "with" in selector:
        widget_identifier = re.search(r'with(.*?)\(', selector).group(1).lower()
        value = re.search(r'\"(.*?)\"\)', selector).group(1)
    elif "IsInstanceOf" in selector:
        widget_identifier = "classname"
        value = re.search(r'instanceOf\((.*?)\.class', selector).group(1)
    else:
        return selector_list
    selector_list.append({"type": widget_identifier, "value": value})
    return selector_list


def extract_get_element_by(parsed_event, line):
    selector_list = []
    selector_section = get_selector_section(line)
    for selector in ['{}{}'.format(s, '),') for s in selector_section.split('),') if s]:
        selector_list = add_selector(selector, selector_list)
    parsed_event["get_element_by"] = selector_list
    return parsed_event


def remove_atm_double_back(parsed_event_list):
    remove_extra_back_indices = []
    prev_back = False
    next_back = True
    for idx, parsed_event in enumerate(parsed_event_list):
        if idx > 0:
            prev_back = parsed_event_list[idx-1]["action"][0] ==  "KEY_BACK"
        if idx < len(parsed_event_list) - 1:
            next_back = parsed_event_list[idx+1]["action"][0] ==  "KEY_BACK"
        if parsed_event["action"][0]=="KEY_BACK":
            if prev_back == True and next_back == False or idx == len(parsed_event_list) -1:
                remove_extra_back_indices.append(idx)
    parsed_event_list = [x for i, x in enumerate(parsed_event_list) if i not in remove_extra_back_indices]
    return parsed_event_list


def parse_test_section(lines):
    lines = rearrange_lines(lines)
    parsed_event_list = []
    for line in lines:
        if "onView" in line or "pressBack();" in line:
            parsed_event = {}
            parsed_event = extract_action(parsed_event, line)
            # Ignore if the action is oracle
            if parsed_event is None:
                continue
            if actions_need_element(parsed_event["action"][0]):
                parsed_event = extract_get_element_by(parsed_event, line)
            parsed_event_list.append(parsed_event)
        if "openActionBarOverflowOrOptionsMenu(getInstrumentation().getTargetContext());" in line:
            parsed_event = {}
            parsed_event["action"] = ["openActionBarOverflowOrOptionsMenu"]
            # parsed_event["get_element_by"] = [{"type": "contentdescription", "value": "More options"}]
            parsed_event_list.append(parsed_event)
    # parsed_event_list = remove_atm_double_back(parsed_event_list)

    return parsed_event_list


def is_not_repeated(parsed_event):
    not_repeated = True
    if parsed_event["action"][0] == ["openActionBarOverflowOrOptionsMenu"]:
        repeated = False
    elif parsed_event["action"][0] == ["click"]:
        if parsed_event["get_element_by"] == [{"type": "contentdescription", "value": "More options"}]:
            repeated = False
    return repeated


def remove_repeated_actions(parsed_event_list):
    new_parsed_event_list = []
    for (i, parsed_event) in enumerate(parsed_event_list):
        if parsed_event["action"][0] == "openActionBarOverflowOrOptionsMenu":
            try:
                if is_not_repeated(parsed_event_list[i-1]) and is_not_repeated(parsed_event_list[i+1]):
                    new_parsed_event_list.append(parsed_event)
            except Exception as e:
                pass
        else:
            new_parsed_event_list.append(parsed_event)
    return new_parsed_event_list


def atm_parse(fname):
    # parsed_file_name = get_parsed_file_name(fname)
    if fname.split("/")[-3] == "ground_truth":
        return load_json_data(fname)
    lines = read_file(fname)
    section = get_test_section(lines)
    parsed_test = parse_test_section(section)
    parsed_test = remove_repeated_actions(parsed_test)
    # write_json(parsed_test, parsed_file_name)
    return parsed_test

def main():
    atm_globs = config.custom_tests_glob('atm')
    for file in atm_globs:
        atm_parse(file)


if __name__ == '__main__':
    main()
