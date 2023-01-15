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
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("SGD - Singapore Dollar"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("£ - British Pound"))).check(matches(isDisplayed()));
        
        onView(withId(R.id.onboarding_screen2_next_button)).perform(click());
        
        onView(withId(R.id.onboarding_screen3_initial_amount_et)).perform(replaceText("500"), closeSoftKeyboard());
        
        onView(withId(R.id.onboarding_screen3_next_button)).perform(click());
        
        onView(withId(R.id.welcome_view_pager)).check(matches(isDisplayed()));
        
        onView(withId(R.id.welcome_view_pager)).check(matches(withText("1. Add recurring expenses and incomes (salary, rent, bills…)
        
        2. Don't forget to add your daily expenses and incomes during the day")));
        
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
