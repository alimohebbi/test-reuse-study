package privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.ui.main;


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

import privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.R;

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
public class AppTestMigrator_shoppingListTest11_2 {

    @Rule
    public ActivityTestRule<privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.ui.main.SplashActivity> mActivityTestRule = new ActivityTestRule<>(privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.ui.main.SplashActivity.class);

    @Test
    public void apptestmigrator_shoppinglisttest11_2() {
        onView(withId(R.id.btn_next)).perform(click());
        
        onView(allOf(withId(R.id.textView), withText("... create a new list?"))).perform(click());
        
        onView(allOf(withId(R.id.textView), withText("... create a new list?"))).perform(longClick());
        
        onView(withId(R.id.btn_skip)).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withId(R.id.fab_new_list)).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withContentDescription("Close navigation drawer")).perform(click());
        
        onView(withId(R.id.imageView)).perform(click());
        
        onView(withId(R.id.imageView)).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("Main"))).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withId(R.id.fab_new_list)).perform(click());
        
        onView(withId(R.id.list_notes)).perform(replaceText("list1"), closeSoftKeyboard());
        
        onView(withText("Okay")).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withId(R.id.textview_list_name)).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withId(R.id.reminder_bar)).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withId(R.id.fab_new_list)).perform(click());
        
        onView(withId(R.id.list_name)).perform(replaceText("item1"), closeSoftKeyboard());
        
        onView(withText("Okay")).perform(click());
        
        onView(withId(R.id.imageview_search)).check(matches(allOf(isDisplayed(), withText("item1"), isEnabled())));
        
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
