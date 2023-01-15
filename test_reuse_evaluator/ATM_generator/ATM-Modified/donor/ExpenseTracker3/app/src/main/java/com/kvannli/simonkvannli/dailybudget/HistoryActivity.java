package com.kvannli.simonkvannli.dailybudget;

import android.content.Context;
import android.content.Intent;
import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TabHost;
import android.widget.TextView;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class HistoryActivity extends ActionBarActivity {
    HistoryDBHandler historyDBHandler;

    HistoryAdapter mAdapter;
    ListView listView;
    AdView mAdView;
    public final static String EXTRA_MESSAGE = "com.example.simonkvannli.dailybudget.HISTORYMESSAGE";

    private int tabMode = 0; //0 is for +/-, 1 is for - and 2 is for +

    private TabHost mTabHost;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_history);

        //Get database
        historyDBHandler = new HistoryDBHandler(this, null, null, 1);
        listView = (ListView) findViewById(R.id.mobile_list);

        showMyAd();

        fillListView();

        fillTabs();


    }

    @Override
    public void onResume() {
        super.onResume();  // Always call the superclass method first

        fillListView();

    }

    public void fillTabs(){
        setupTabHost();
        mTabHost.getTabWidget().setDividerDrawable(R.drawable.abc_list_divider_mtrl_alpha);

        setupTab(new TextView(this), "+ / ―", R.id.tab1);
        setupTab(new TextView(this), "―", R.id.tab2);
        setupTab(new TextView(this), "+", R.id.tab3);

        mTabHost.setCurrentTab(0);
    }

    private void setupTabHost() {
        mTabHost = (TabHost) findViewById(R.id.tabHost);
        mTabHost.setup();
        mTabHost.setOnTabChangedListener(new TabHost.OnTabChangeListener() {

            public void onTabChanged(String tabId) {
                switch (mTabHost.getCurrentTab()) {
                    case 0:
                        tabMode = 0;
                        fillListView();
                        break;
                    case 1:
                        tabMode = 1;
                        fillListView();
                        break;
                    case 2:
                        tabMode = 2;
                        fillListView();
                        break;

                    default:

                        break;
                }
            }
        });
    }

    private void setupTab(final View view, final String tag, final int res) {
        View tabview = createTabView(mTabHost.getContext(), tag);
        TabHost.TabSpec setContent = mTabHost.newTabSpec(tag).setIndicator(tabview).setContent(res);
        mTabHost.addTab(setContent);
    }

    private static View createTabView(final Context context, final String text) {
        View view = LayoutInflater.from(context).inflate(R.layout.tabwidget_bg, null);
        TextView tv = (TextView) view.findViewById(R.id.tabsText);
        tv.setText(text);
        return view;
    }

    public void showMyAd(){
        mAdView = (AdView) findViewById(R.id.adView);
        //Dont need to set banner_ad_id, does that in the activity_main.xml
        AdRequest adRequest = new AdRequest.Builder().build();
        mAdView.loadAd(adRequest);
    }

    public void historyPressed(int id){

        Intent intent = new Intent(HistoryActivity.this, updateHistoryActivity.class);
        intent.putExtra(EXTRA_MESSAGE, id);
        startActivity(intent);
    }

    public void fillListView(){

        //Get string form DB
        List<HistoryObject> historyObjects;
        if(tabMode == 2){
            historyObjects = historyDBHandler.get30HistoryObjectsPlus();
        }else if(tabMode == 1){
            historyObjects = historyDBHandler.get30HistoryObjectsMinus();
        }else{
            historyObjects = historyDBHandler.get30HistoryObjects();
        }
        // "8 # note : 22 % 1 | 2016-10-06 17:38:57" format
        mAdapter = new HistoryAdapter(this,true);
        String date = "";
        for (HistoryObject obj : historyObjects) {
            if(!obj.get_date().equals(date)){ //If new date
                date = obj.get_date();
                mAdapter.addSectionHeaderItem(obj);
            }
            //mAdapter.addItem(obj.get_historyNote()+"\n"+obj.get_value()+"\n"+obj.get_dateTime());
            mAdapter.addItem(obj);



        }
        listView.setAdapter(mAdapter);
    }
    public void fillListViewAll(){
        //Get string form DB
        List<HistoryObject> historyObjects;
        if(tabMode == 2){
            historyObjects = historyDBHandler.getAllHistoryObjectsPlus();
        }else if(tabMode == 1){
            historyObjects = historyDBHandler.getAllHistoryObjectsMinus();
        }else{
            historyObjects = historyDBHandler.getAllHistoryObjects();
        }

        // "8 # note : 22 % 1 | 2016-10-06 17:38:57" format
        mAdapter = new HistoryAdapter(this,false);
        String date = "";
        for (HistoryObject obj : historyObjects) {
            if(!obj.get_date().equals(date)){ //If new date
                date = obj.get_date();
                mAdapter.addSectionHeaderItem(obj);

            }
            //mAdapter.addItem(obj.get_historyNote()+"\n"+obj.get_value()+"\n"+obj.get_dateTime());
            mAdapter.addItem(obj);



        }
        listView.setAdapter(mAdapter);

    }
}
