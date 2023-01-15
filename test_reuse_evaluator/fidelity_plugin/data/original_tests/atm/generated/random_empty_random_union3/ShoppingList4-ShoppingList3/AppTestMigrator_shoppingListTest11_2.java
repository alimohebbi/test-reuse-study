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
        
        onView(allOf(withId(R.id.textView3), withText("... sort lists?"))).perform(click());
        
        onView(allOf(withId(R.id.textView3), withText("... sort lists?"))).perform(longClick());
        
        onView(withId(R.id.btn_next)).perform(click());
        
        onView(allOf(withId(R.id.textView), withText("... add a new product?"))).perform(longClick());
        
        onView(allOf(withId(R.id.textView2), withText("... delete multiple products?"))).perform(longClick());
        
        onView(allOf(withId(R.id.textView3), withText("... sort products?"))).perform(longClick());
        
        onView(allOf(withId(R.id.textView4), withText("... see product details?"))).perform(longClick());
        
        onView(withId(R.id.textView5)).perform(longClick());
        
        onView(withId(R.id.btn_next)).perform(click());
        
        onView(withText("If the statistics feature for the current list is enabled, products will be added to the statistics every time you check them. The same product can be added to the statistics multiple times. This allows you to uncheck products, reuse the list and still keep track of the checked items.")).perform(longClick());
        
        onView(withId(R.id.btn_next)).perform(click());
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withId(R.id.fab_new_list)).perform(click());
        
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
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        pressBack();
        
        onView(withId(R.id.fab_new_list)).perform(click());
        
        onView(withId(R.id.list_notes)).perform(replaceText("list1"), closeSoftKeyboard());
        
        onView(withId(R.id.list_name)).perform(click());
        
        onView(withId(R.id.list_notes)).perform(click());
        
        onView(withText("Okay")).perform(click());
        
        onView(withId(R.id.fab_new_product)).perform(click());
        
        onView(withId(R.id.product_button_minus)).perform(click());
        
        onView(withId(R.id.product_notes)).perform(replaceText("item1"), closeSoftKeyboard());
        
        onView(withText("Okay")).perform(click());
        
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
