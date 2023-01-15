package com.kvannli.simonkvannli.dailybudget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.app.Fragment;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import java.io.File;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;

public class MainActivity extends ActionBarActivity implements NavigationDrawerFragment.NavigationDrawerCallbacks{

    MyDBHandler dbHandler;
    float floatDefault = 0;
    AdView mAdView;
    /**
     * Fragment managing the behaviors, interactions and presentation of the navigation drawer.
     */
    private NavigationDrawerFragment mNavigationDrawerFragment;

    /**
     * Used to store the last screen title. For use in {@link #restoreActionBar()}.
     */
    private CharSequence mTitle;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("");
        setContentView(R.layout.activity_main);

        showMyAd();



        //DRAWER
        mNavigationDrawerFragment = (NavigationDrawerFragment)
                getSupportFragmentManager().findFragmentById(R.id.navigation_drawer);
        mTitle = getTitle();

        // Set up the drawer.
        mNavigationDrawerFragment.setUp(
                R.id.navigation_drawer,
                (DrawerLayout) findViewById(R.id.drawer_layout));
        //DrawerLayout drwr = (DrawerLayout) findViewById(R.id.drawer_layout);
        //drwr.closeDrawer(Gravity.LEFT);

        //DRAWER

        SharedPreferences sharedPref = getSharedPreferences(getString(R.string.preference_file_key), Context.MODE_PRIVATE);

        dbHandler = new MyDBHandler(this, null, null, 1);

        boolean isFirstLaunch=sharedPref.getBoolean("firstLaunch",true);
        //boolean isFirstLaunch = true;
        //If launches for first time
        SharedPreferences.Editor editor=sharedPref.edit();
        System.out.println("Is first time launch?: "+isFirstLaunch);
        if(isFirstLaunch){
            //Create all shared preferences values
            editor.putBoolean("firstLaunch",false);
            editor.putString(getString(R.string.moneyType),"$");
            editor.putString(getString(R.string.moneyDesimal),"2");

            editor.putFloat(getString(R.string.current_money),floatDefault);
            editor.putFloat(getString(R.string.daily_money),floatDefault);
            editor.putFloat(getString(R.string.daily_expenses),floatDefault);

            editor.putLong(getString(R.string.last_updated),millisToDay(new Date().getTime()));
            editor.putLong(getString(R.string.first_day),millisToDay(new Date().getTime()));

            editor.apply();

        }else {
            //something
        }


    }

    @Override
    public void onResume() {
        super.onResume();  // Always call the superclass method first
        mAdView.resume();
        updateCurrentMoney();

    }
    @Override
    protected void onPause() {
        mAdView.pause();
        super.onPause();
    }

    public void showMyAd(){
        mAdView = (AdView) findViewById(R.id.adView);
        //Dont need to set banner_ad_id, does that in the activity_main.xml
        AdRequest adRequest = new AdRequest.Builder().build();
        mAdView.loadAd(adRequest);
    }
    @Override
    public void onNavigationDrawerItemSelected(int position) {
        // update the main content by replacing fragments
        switch (position) {
            case 1:
                //startActivity(new Intent(MainActivity.this, SavingsActivity.class));

                startActivity(new Intent(MainActivity.this, HistoryActivity.class));

                break;
            case 2:
                startActivity(new Intent(MainActivity.this, income_activity.class));
                break;
            case 3:
                startActivity(new Intent(MainActivity.this, expense_activity.class));

                break;
            case 4:
                startActivity(new Intent(MainActivity.this, settings_activity.class));

                break;

        }
        System.out.println("POSITION: "+position);
    }

    public void onSectionAttached(int number) {
        switch (number) {
            case 1:
                mTitle = getString(R.string.title_section1);
                break;
            case 2:
                mTitle = getString(R.string.title_section2);
                break;
            case 3:
                mTitle = getString(R.string.title_section3);
                break;
        }
    }

    /*public void restoreActionBar() {
        ActionBar actionBar = getSupportActionBar();
        actionBar.setNavigationMode(ActionBar.NAVIGATION_MODE_STANDARD);
        actionBar.setDisplayShowTitleEnabled(true);
        actionBar.setTitle(mTitle);
    }*/

    /**
     * A placeholder fragment containing a simple view.
     */
    //THIS FRAGMENT CLASS IS COMPLETELY USELESS! IM AFRAID I MIGHT NEED IT IN THE FUTURE
    public static class PlaceholderFragment extends Fragment {
        /**
         * The fragment argument representing the section number for this
         * fragment.
         */
        private static final String ARG_SECTION_NUMBER = "section_number";

        public PlaceholderFragment() {
        }

        /**
         * Returns a new instance of this fragment for the given section
         * number.
         */
        public static PlaceholderFragment newInstance(int sectionNumber) {
            PlaceholderFragment fragment = new PlaceholderFragment();
            Bundle args = new Bundle();
            args.putInt(ARG_SECTION_NUMBER, sectionNumber);
            fragment.setArguments(args);
            return fragment;
        }

        @Override
        public View onCreateView(LayoutInflater inflater, ViewGroup container,
                                 Bundle savedInstanceState) {
            View rootView = inflater.inflate(R.layout.fragment_main2, container, false);
            return rootView;
        }

        @Override
        public void onAttach(Activity activity) {
            super.onAttach(activity);
            ((MainActivity) activity).onSectionAttached(
                    getArguments().getInt(ARG_SECTION_NUMBER));
        }
    }

    public long millisToDay(long millis){
        return millis / (1000*60*60*24);
    }

    /*
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }



    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
    */

    public void changeToIncome(View v){
        startActivity(new Intent(MainActivity.this, income_activity.class));

    }

    public void changeToExpense(View v){
        startActivity(new Intent(MainActivity.this, expense_activity.class));

    }
    public void changeToSettings(View v){
        startActivity(new Intent(MainActivity.this, settings_activity.class));

    }

    public void changeToInput(View v, boolean minus){

        Intent intent = new Intent(MainActivity.this, InputActivity.class);
        intent.putExtra("IS_MINUS",minus);
        startActivity(intent);
    }

    public void updateCurrentMoney(){
        SharedPreferences sharedPref = getSharedPreferences(getString(R.string.preference_file_key), Context.MODE_PRIVATE);


        long lastUpdated = sharedPref.getLong(getString(R.string.last_updated),0);
        float currentMoney = sharedPref.getFloat(getString(R.string.current_money),floatDefault);

        long today = millisToDay(new Date().getTime()); // fakeToday();
        if(today == sharedPref.getLong(getString(R.string.first_day),0)){
            Toast.makeText(this, "Daily amount will be added tomorrow!", Toast.LENGTH_LONG).show();
        }
        //Hvis den ikke ble oppdatert i dag, legg til nye penger! !=, bruk == for å teste
        if(lastUpdated != today){
            long diff = today-lastUpdated;
            diff = Math.abs(diff);
            currentMoney = currentMoney + (getDailyMoney() * (int) diff);
            String placeholder = correctFormatOfFloat(currentMoney);
            currentMoney = Float.parseFloat(placeholder);
            System.out.println("Current money after updateCurrentMoney: "+currentMoney);

            //Update values changed
            SharedPreferences.Editor editor=sharedPref.edit();
            editor.putFloat(getString(R.string.current_money), currentMoney);
            editor.putLong(getString(R.string.last_updated),today);
            editor.apply();
        }

        //Setter text view til current_money sharedPreference verdien
        TextView currentMoneyView = (TextView) findViewById(R.id.current_money);

        //SYMBOLS THAT MUST GO BEFORE THE    MONEY
        String[] symbolFirstArray = {"$","¥","£","\u20B9"};

        if(Arrays.asList(symbolFirstArray).contains(sharedPref.getString(getString(R.string.moneyType),"default"))){
            currentMoneyView.setText(sharedPref.getString(getString(R.string.moneyType),"default")+" "+correctFormatOfFloat(sharedPref.getFloat(getString(R.string.current_money),floatDefault)));
        }else {
            currentMoneyView.setText(correctFormatOfFloat(sharedPref.getFloat(getString(R.string.current_money), floatDefault)) + " " +
                    sharedPref.getString(getString(R.string.moneyType), "default"));
        }

        //Printer ut litt stats
        System.out.println("CURRENT DATE: "+(millisToDay(new Date().getTime())));
        System.out.println("CURRENT MONEY: "+Float.toString(sharedPref.getFloat(getString(R.string.current_money),floatDefault)));
        System.out.println("DAILY INCOME: "+Float.toString(sharedPref.getFloat(getString(R.string.daily_money),floatDefault)));
        System.out.println("DAILY EXPENSES: "+Float.toString(sharedPref.getFloat(getString(R.string.daily_expenses),floatDefault)));
        System.out.println("DAILY MONEY: "+getDailyMoney());

        System.out.println("LAST UPDATED: "+sharedPref.getLong(getString(R.string.last_updated),69));

        TextView daily_amount = (TextView) findViewById(R.id.daily_amount);
        daily_amount.setText(" "+correctFormatOfFloat(getDailyMoney()));

    }

    public void addMoney(View v){
        changeToInput(v, false);
    }

    public void subtractMoney(View v){
        changeToInput(v, true);
    }


    /*public int fakeToday(){
        return 106;
    }*/


    public float getDailyMoney(){

        SharedPreferences sharedPref = getSharedPreferences(getString(R.string.preference_file_key), Context.MODE_PRIVATE);

        float income = sharedPref.getFloat(getString(R.string.daily_money),floatDefault);
        float expenses = sharedPref.getFloat(getString(R.string.daily_expenses),floatDefault);

        return income-expenses;


    }

    /*public int daysThisMonth(){
        return Calendar.getInstance().getActualMaximum(Calendar.DAY_OF_MONTH);
    }*/

    public String correctFormatOfFloat(float x){
        SharedPreferences sharedPref = getSharedPreferences(getString(R.string.preference_file_key), Context.MODE_PRIVATE);
        String currentNumber = sharedPref.getString(getString(R.string.moneyDesimal),"2");
        int number = Integer.parseInt(currentNumber);
        String myFormat = getString(R.string.two_desimal);
        if(number==0){
            myFormat = getString(R.string.no_desimal);
        }else if(number == 1){
            myFormat = getString(R.string.one_desimal);
        }else if(number == 2){
            myFormat = getString(R.string.two_desimal);
        }//Flere i framtiden

        //Kan velge mellom
        //two_desimal, one_desimal og no_desimal
        String toReturn = String.format(myFormat,x);
        return toReturn.replace(",",".").replace("−","-");

    }

    /*public float correctFormatOfFloat(String x){
        float placeholder = Float.parseFloat(x);
        return Float.parseFloat(correctFormatOfFloat(placeholder));
    }*/

    protected void onStop() {
        super.onStop();

        String TAG = "jacoco";
        // use reflection to call emma dump coverage method, to avoid
        // always statically compiling against emma jar
        Log.d("StorageSt", Environment.getExternalStorageState());
        String coverageFilePath = Environment.getExternalStorageDirectory() + File.separator + "coverage.exec";
        File coverageFile = new File(coverageFilePath);
        try {
            coverageFile.createNewFile();
            Class<?> emmaRTClass = Class.forName("com.vladium.emma.rt.RT");
            Method dumpCoverageMethod = emmaRTClass.getMethod("dumpCoverageData",
                    coverageFile.getClass(), boolean.class, boolean.class);

            dumpCoverageMethod.invoke(null, coverageFile, false, false);
            Log.e(TAG, "generateCoverageReport: ok");
        } catch (Exception  e) {
            throw new RuntimeException("Is emma jar on classpath?", e);
        }
    }
}
