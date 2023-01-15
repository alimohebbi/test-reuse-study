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
        onView(withId(R.id.btn_skip)).perform(click());
        
        onView(withId(R.id.fab_new_list)).perform(click());
        
        onView(withId(R.id.list_notes)).perform(replaceText("list1"), closeSoftKeyboard());
        
        onView(withText("Okay")).perform(click());
        
        onView(withText("New Shopping List")).check(matches(allOf(withText("New Shopping List"), isDisplayed(), isEnabled())));
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withId(R.id.textview_list_info)).perform(click());
        
        onView(withId(R.id.fab_new_product)).perform(click());
        
        onView(withText("Okay")).perform(click());
        
        onView(withId(R.id.product_button_minus)).perform(click());
        
        onView(withId(R.id.product_button_plus)).perform(click());
        
        onView(withText("Cancel")).perform(click());
        
        onView(withId(R.id.fab_new_product)).perform(click());
        
        onView(withId(R.id.product_button_minus)).perform(click());
        
        onView(withId(R.id.product_button_plus)).perform(click());
        
        onView(withId(R.id.expand_button)).perform(click());
        
        onView(withId(R.id.expand_button)).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Button")).perform(click());
        
        onView(withId(R.id.fab_new_product)).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Button[2]")).perform(click());
        
        pressBack();
        
        pressBack();
        
        onView(withId(R.id.imageview_search)).perform(longClick());
        
        onView(withId(R.id.imageview_search)).perform(longClick());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withContentDescription("Close navigation drawer")).perform(click());
        
        onView(withId(R.id.imageview_sort)).perform(longClick());
        
        onView(withId(R.id.imageview_sort)).perform(longClick());
        
        onView(withId(R.id.imageview_delete)).perform(longClick());
        
        onView(withId(R.id.expand_button_list)).perform(click());
        
        onView(withId(R.id.textview_list_details)).check(matches(allOf(isDisplayed(), withText("Nr. Items: 0
        
        Total Amount: 0.00  $
        
        Statistics are disabled for this list.
        
        Priority: Normal
        
        Notes: list1"), isEnabled())));
        
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
