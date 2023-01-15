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
public class AppTestMigrator_shoppingListTest10_1 {

    @Rule
    public ActivityTestRule<privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.ui.main.SplashActivity> mActivityTestRule = new ActivityTestRule<>(privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.ui.main.SplashActivity.class);

    @Test
    public void apptestmigrator_shoppinglisttest10_1() {
        onView(withId(R.id.btn_next)).perform(click());
        
        onView(allOf(withId(R.id.textView), withText("... create a new list?"))).perform(longClick());
        
        onView(allOf(withId(R.id.textView2), withText("... delete multiple lists?"))).perform(longClick());
        
        onView(withId(R.id.btn_skip)).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withId(R.id.fab_new_list)).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withContentDescription("Close navigation drawer")).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("Main"))).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withContentDescription("Close navigation drawer")).perform(click());
        
        onView(withId(R.id.imageView)).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("Statistics"))).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withId(R.id.textview_stats_range_from)).perform(click());
        
        onView(withId(R.id.textview_stats_range_to)).perform(click());
        
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
        
        onView(withText("Month")).perform(click());
        
        onView(withText("Price")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withId(R.id.textview_stats_range_from)).perform(click());
        
        onView(withText("2022")).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.DatePicker/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView")).perform(click());
        
        onView(withText("Mon, May 2")).perform(click());
        
        onView(withText("Mon, May 2")).perform(click());
        
        onView(withContentDescription("Next month")).perform(click());
        
        onView(withContentDescription("Previous month")).perform(click());
        
        onView(withText("Cancel")).perform(click());
        
        onView(withId(R.id.textview_stats_range_to)).perform(click());
        
        onView(withText("Okay")).perform(click());
        
        onView(withText("Month")).perform(click());
        
        onView(withText("Month")).perform(click());
        
        onView(withText("Price")).perform(click());
        
        onView(withText("Price")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withId(R.id.fab_new_list)).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withContentDescription("Close navigation drawer")).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("Main"))).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withContentDescription("Close navigation drawer")).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("Settings"))).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ImageButton")).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.TextView")).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout[6]/android.widget.RelativeLayout/android.widget.TextView")).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.TextView")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ImageButton")).perform(click());
        
        onView(withId(R.id.imageView)).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("Main"))).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withContentDescription("Close navigation drawer")).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("Help"))).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ImageButton")).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.RelativeLayout/android.widget.TextView")).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withContentDescription("Close navigation drawer")).perform(click());
        
        onView(allOf(withId(R.id.design_menu_item_text), withText("About"))).perform(click());
        
        onView(withId(R.id.secusoWebsite)).perform(longClick());
        
        onView(withId(R.id.githubURL)).perform(longClick());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withId(R.id.fab_new_list)).perform(click());
        
        onView(withId(R.id.list_name)).perform(replaceText("Grocery"), closeSoftKeyboard());
        
        onView(withId(R.id.list_name)).perform(replaceText("Weekly grocery shopping"), closeSoftKeyboard());
        
        onView(withId(R.id.list_name)).perform(click());
        
        onView(withId(R.id.switch_statistics)).check(matches(withText(" Shopping List Name ")));
        
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
