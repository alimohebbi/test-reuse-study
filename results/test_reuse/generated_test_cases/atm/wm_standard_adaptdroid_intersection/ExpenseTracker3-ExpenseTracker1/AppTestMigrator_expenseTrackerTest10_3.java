package com.benoitletondor.easybudgetapp.view;


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

import com.benoitletondor.easybudgetapp.R;

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
public class AppTestMigrator_expenseTrackerTest10_3 {

    @Rule
    public ActivityTestRule<com.benoitletondor.easybudgetapp.view.MainActivity> mActivityTestRule = new ActivityTestRule<>(com.benoitletondor.easybudgetapp.view.MainActivity.class);

    @Test
    public void apptestmigrator_expensetrackertest10_3() {
        onView(withId(R.id.onboarding_screen1_next_button)).perform(click());
        
        onView(withId(R.id.onboarding_screen2_next_button)).perform(click());
        
        onView(withId(R.id.onboarding_screen3_next_button)).perform(click());
        
        onView(withId(R.id.onboarding_screen4_next_button)).check(matches(withText("Let's go!")));
        
        onView(withId(R.id.onboarding_screen4_next_button)).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.LinearLayoutCompat/android.widget.ImageView")).perform(longClick());
        
        onView(allOf(withId(R.id.title), withText("Adjust current balance"))).perform(click());
        
        onView(withText("Cancel")).perform(click());
        
        onView(withId(R.id.fab_expand_menu_button)).perform(click());
        
        onView(withId(R.id.fab_new_recurring_expense)).perform(click());
        
        onView(withId(R.id.description_edittext)).perform(replaceText("uber"), closeSoftKeyboard());
        
        onView(withText("Every month")).perform(click());
        
        onView(withText("Every week")).perform(click());
        
        onView(withId(R.id.amount_edittext)).perform(replaceText("500"), closeSoftKeyboard());
        
        onView(withId(R.id.expense_type_switch)).perform(click());
        
        onView(withId(R.id.date_button)).check(matches(isDisplayed()));
        
        onView(withId(R.id.date_button)).check(matches(withText("Apr 12 2022")));
        
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
