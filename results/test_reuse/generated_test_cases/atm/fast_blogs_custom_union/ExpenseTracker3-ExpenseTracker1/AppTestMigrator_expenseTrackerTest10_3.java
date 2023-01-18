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
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("€ - Euro"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("€ - Euro"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("£ - British Pound"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("£ - British Pound"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("€ - Euro"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("$ - US Dollar"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("$ - US Dollar"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("£ - British Pound"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("A$ - Australian Dollar"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("£ - British Pound"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("CA$ - Canadian Dollar"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("£ - British Pound"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("SGD - Singapore Dollar"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("£ - British Pound"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("$ - US Dollar"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("A$ - Australian Dollar"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("CA$ - Canadian Dollar"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("A$ - Australian Dollar"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("SGD - Singapore Dollar"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("A$ - Australian Dollar"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("$ - US Dollar"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("CA$ - Canadian Dollar"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("SGD - Singapore Dollar"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("CA$ - Canadian Dollar"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("$ - US Dollar"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("SGD - Singapore Dollar"))).perform(click());
        
        onView(allOf(withId(R.id.currency_cell_title_tv), withText("$ - US Dollar"))).perform(click());
        
        onView(withId(R.id.onboarding_screen2_next_button)).perform(click());
        
        onView(withId(R.id.onboarding_screen3_next_button)).perform(click());
        
        onView(withId(R.id.onboarding_screen4_next_button)).perform(click());
        
        onView(withId(R.id.calendar_left_arrow)).perform(click());
        
        onView(withId(R.id.calendar_left_arrow)).perform(click());
        
        onView(withId(R.id.calendar_right_arrow)).perform(click());
        
        onView(withId(R.id.weekday_gridview)).perform(click());
        
        onView(withId(R.id.fab_expand_menu_button)).perform(click());
        
        onView(withId(R.id.fab_expand_menu_button)).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.support.v7.widget.LinearLayoutCompat/android.widget.ImageView")).perform(longClick());
        
        onView(allOf(withId(R.id.title), withText("Adjust current balance"))).perform(click());
        
        onView(withText("Cancel")).perform(click());
        
        onView(withId(R.id.fab_expand_menu_button)).perform(click());
        
        onView(withId(R.id.fab_new_recurring_expense)).perform(click());
        
        onView(withId(R.id.description_edittext)).perform(replaceText("uber"), closeSoftKeyboard());
        
        onView(withId(R.id.date_button)).perform(click());
        
        onView(withText("2022")).check(matches(isDisplayed()));
        
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
