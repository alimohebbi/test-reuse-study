package luankevinferreira.expenses;


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

import luankevinferreira.expenses.R;

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
    public ActivityTestRule<luankevinferreira.expenses.MainActivity> mActivityTestRule = new ActivityTestRule<>(luankevinferreira.expenses.MainActivity.class);

    @Test
    public void apptestmigrator_easybudgettest10_1() {
        onView(withXPath("/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup/android.support.v7.widget.LinearLayoutCompat/android.widget.ImageView")).perform(longClick());
        
        openActionBarOverflowOrOptionsMenu(getInstrumentation().getTargetContext());
        
        onView(withId(R.id.title)).perform(click());
        
        openActionBarOverflowOrOptionsMenu(getInstrumentation().getTargetContext());
        
        pressBack();
        
        openActionBarOverflowOrOptionsMenu(getInstrumentation().getTargetContext());
        
        onView(withId(R.id.title)).perform(click());
        
        onView(withId(R.id.fab)).perform(click());
        
        onView(withId(R.id.expense_description)).perform(replaceText("Entertainment"), closeSoftKeyboard());
        
        onView(withId(R.id.expense_description)).perform(replaceText("45"), closeSoftKeyboard());
        
        pressBack();
        
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
