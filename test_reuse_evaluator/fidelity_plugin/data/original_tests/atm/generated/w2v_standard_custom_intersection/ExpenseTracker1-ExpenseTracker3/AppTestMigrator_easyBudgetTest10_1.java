package com.kvannli.simonkvannli.dailybudget;


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

import com.kvannli.simonkvannli.dailybudget.R;

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
public class AppTestMigrator_easyBudgetTest10_1 {

    @Rule
    public ActivityTestRule<com.kvannli.simonkvannli.dailybudget.MainActivity> mActivityTestRule = new ActivityTestRule<>(com.kvannli.simonkvannli.dailybudget.MainActivity.class);

    @Test
    public void apptestmigrator_easybudgettest10_1() {
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withContentDescription("Close navigation drawer")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withContentDescription("Close navigation drawer")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withContentDescription("Close navigation drawer")).perform(click());
        
        onView(withId(R.id.imageButton2)).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withContentDescription("Close navigation drawer")).perform(click());
        
        onView(withId(R.id.imageButton)).perform(click());
        
        onView(withId(R.id.doneButton)).perform(click());
        
        onView(withId(R.id.doneButton)).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.support.v4.widget.DrawerLayout/android.widget.ListView/android.widget.TextView")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.support.v4.widget.DrawerLayout/android.widget.ListView/android.widget.TextView[2]")).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.support.v4.widget.DrawerLayout/android.widget.ListView/android.widget.TextView[3]")).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.support.v4.widget.DrawerLayout/android.widget.ListView/android.widget.TextView[4]")).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.support.v4.widget.DrawerLayout/android.widget.ListView/android.widget.TextView[5]")).perform(click());
        
        onView(withId(R.id.likeViewClick)).perform(longClick());
        
        onView(withId(R.id.likeViewClick)).perform(click());
        
        onView(withId(R.id.button3)).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.CheckedTextView")).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withId(R.id.imageButton2)).perform(click());
        
        onView(withId(R.id.doneButton)).perform(click());
        
        onView(withId(R.id.doneButton)).perform(click());
        
        pressBack();
        
        onView(withId(R.id.imageButton2)).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.support.v4.widget.DrawerLayout/android.widget.ListView/android.widget.TextView[4]")).perform(click());
        
        onView(withId(R.id.editText2)).perform(replaceText("45"), closeSoftKeyboard());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.support.v4.widget.DrawerLayout/android.widget.ListView/android.widget.TextView[3]")).check(matches(withText("INCOME")));
        
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
