package pl.com.andrzejgrzyb.shoppinglist;


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

import pl.com.andrzejgrzyb.shoppinglist.R;

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
    public ActivityTestRule<pl.com.andrzejgrzyb.shoppinglist.MainActivity> mActivityTestRule = new ActivityTestRule<>(pl.com.andrzejgrzyb.shoppinglist.MainActivity.class);

    @Test
    public void apptestmigrator_shoppinglisttest11_2() {
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withId(R.id.nav_user_name_textview)).perform(click());
        
        onView(withId(R.id.nav_user_name_textview)).perform(click());
        
        pressBack();
        
        onView(withId(R.id.fab)).perform(click());
        
        onView(withId(R.id.shoppingListNameEditText)).perform(replaceText("list1"), closeSoftKeyboard());
        
        onView(withId(R.id.addShoppingListButton)).perform(click());
        
        onView(withId(R.id.shoppingListModificationDateTextView)).check(matches(allOf(withText("just now"), isDisplayed(), isEnabled())));
        
        onView(withContentDescription("Open navigation drawer")).perform(click());
        
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.support.v7.widget.LinearLayoutCompat[4]/android.widget.CheckedTextView")).perform(click());
        
        onView(withId(R.id.itemsCountTextView)).perform(click());
        
        onView(withContentDescription("Navigate up")).perform(click());
        
        onView(withId(R.id.fab)).perform(click());
        
        onView(withId(R.id.addShoppingListButton)).perform(click());
        
        onView(withId(R.id.shoppingListDescriptionEditText)).perform(replaceText("item1"), closeSoftKeyboard());
        
        onView(withId(R.id.addShoppingListButton)).perform(click());
        
        onView(withText("Add Shopping List")).check(matches(allOf(isDisplayed(), withText("Add Shopping List"), isEnabled())));
        
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
