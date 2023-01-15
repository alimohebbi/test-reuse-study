package com.blogspot.e_kanivets.moneytracker.activity.record;


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

import com.blogspot.e_kanivets.moneytracker.R;

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
    public ActivityTestRule<com.blogspot.e_kanivets.moneytracker.activity.record.MainActivity> mActivityTestRule = new ActivityTestRule<>(com.blogspot.e_kanivets.moneytracker.activity.record.MainActivity.class);

    @Test
    public void apptestmigrator_easybudgettest10_1() {
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("Exchange rates"))).perform(click());
        
        onView(withId(R.id.list_view)).perform(longClick());
        
        onView(withId(R.id.list_view)).perform(longClick());
        
        onView(withId(R.id.btn_add_exchange_rate)).perform(click());
        
        onView(withId(R.id.action_done)).perform(click());
        
        onView(withId(R.id.action_done)).perform(longClick());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.Spinner/android.widget.TextView")).perform(click());
        
        onView(withText("AED")).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("Results"))).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("Backup/Restore"))).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("Import/Export"))).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("Settings"))).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withId(R.id.btn_add_income)).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withId(R.id.btn_add_expense)).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withText("Week")).perform(click());
        
        onView(withText("Day")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ImageButton")).perform(click());
        
        onView(withText("Day")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withId(R.id.btn_add_income)).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withId(R.id.btn_add_expense)).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withId(R.id.tv_period)).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withId(R.id.iv_more)).perform(click());
        
        onView(withText("NON")).perform(click());
        
        onView(withText("NPR")).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withId(R.id.tv_total_income)).perform(click());
        
        onView(withText("Short summary")).perform(click());
        
        onView(withId(R.id.tv_period)).perform(click());
        
        onView(withId(R.id.tv_total_income)).perform(click());
        
        onView(withId(R.id.tv_total_expense)).perform(click());
        
        onView(withText("Total expense")).perform(click());
        
        onView(withText("Total income")).perform(click());
        
        onView(withId(R.id.tv_total)).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout[2]/android.widget.ExpandableListView/android.widget.LinearLayout/android.view.View")).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout[2]/android.widget.ExpandableListView/android.widget.LinearLayout/android.view.View[2]")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withId(R.id.tv_total_expense)).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withId(R.id.tv_total)).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withId(R.id.tv_default_account_title)).perform(click());
        
        onView(withId(R.id.tv_default_account_sum)).perform(click());
        
        onView(withId(R.id.tv_currency)).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("Accounts"))).perform(click());
        
        onView(withId(R.id.action_transfer)).perform(longClick());
        
        onView(withId(R.id.btn_add_account)).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("Exchange rates"))).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("Results"))).perform(click());
        
        onView(withId(R.id.list_view)).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("Backup/Restore"))).perform(click());
        
        onView(withId(R.id.list_view)).perform(click());
        
        onView(withId(R.id.btn_backup_now)).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("Import/Export"))).perform(click());
        
        onView(withId(R.id.action_help)).perform(longClick());
        
        onView(withId(R.id.btn_import)).perform(click());
        
        onView(withId(R.id.btn_export)).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("Settings"))).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.TextView")).perform(click());
        
        onView(withText("Default")).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.RelativeLayout/android.widget.TextView")).perform(click());
        
        onView(withId(R.id.tv_about)).perform(click());
        
        onView(withId(R.id.tv_about)).perform(click());
        
        onView(withId(R.id.tv_about)).perform(click());
        
        pressBack();
        
        pressBack();
        
        onView(withText("Total expense")).check(matches(withText("Total expense")));
        
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
