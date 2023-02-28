package me.writeily;


import android.support.test.espresso.ViewInteraction;
import android.support.test.rule.ActivityTestRule;
import android.support.test.runner.AndroidJUnit4;
import android.test.suitebuilder.annotation.LargeTest;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

import static android.support.test.InstrumentationRegistry.getInstrumentation;
import static android.support.test.espresso.Espresso.onView;
import static android.support.test.espresso.Espresso.pressBack;
import static android.support.test.espresso.Espresso.openActionBarOverflowOrOptionsMenu;
import static android.support.test.espresso.contrib.RecyclerViewActions.actionOnItemAtPosition;
import static android.support.test.espresso.action.ViewActions.*;
import static android.support.test.espresso.assertion.ViewAssertions.*;
import static android.support.test.espresso.matcher.ViewMatchers.*;

import me.writeily.R;

import org.hamcrest.Description;
import org.hamcrest.Matcher;
import org.hamcrest.TypeSafeMatcher;
import org.hamcrest.core.IsInstanceOf;
import org.junit.Rule;
import org.junit.Test;
import org.junit.runner.RunWith;

import static org.hamcrest.Matchers.allOf;
import static org.hamcrest.Matchers.is;

@LargeTest
@RunWith(AndroidJUnit4.class)
public class AppTestMigrator_swiftNotesTest1_1 {

    @Rule
    public ActivityTestRule<me.writeily.PromptPinActivity> mActivityTestRule = new ActivityTestRule<>(me.writeily.PromptPinActivity.class);

    @Test
    public void apptestmigrator_swiftnotestest1_1() {
        onView(withId(R.id.search_button)).perform(click());
        
        onView(withId(R.id.search_src_text)).perform(replaceText("Title1"), closeSoftKeyboard());
        
        onView(withId(R.id.search_src_text)).perform(replaceText("Note1"), closeSoftKeyboard());
        
        onView(withId(R.id.search_close_btn)).perform(click());
        
        onView(withId(R.id.fab)).check(matches(withText("Last modified: 4/3/2022, 6:35 AM")));
        
        onView(withId(R.id.fab)).check(matches(withText("Last modified: 4/3/2022, 6:35 AM")));
        
        }

        private static Matcher<View> childAtPosition(
            final Matcher<View> parentMatcher, final int position) {

        return new TypeSafeMatcher<View>() {
            @Override
            public void describeTo(Description description) {
                description.appendText("Child at position " + position + " in parent ");
                parentMatcher.describeTo(description);
            }

            @Override
            public boolean matchesSafely(View view) {
                ViewParent parent = view.getParent();
                return parent instanceof ViewGroup && parentMatcher.matches(parent)
                        && view.equals(((ViewGroup)parent).getChildAt(position));
            }
        };
    }
    }