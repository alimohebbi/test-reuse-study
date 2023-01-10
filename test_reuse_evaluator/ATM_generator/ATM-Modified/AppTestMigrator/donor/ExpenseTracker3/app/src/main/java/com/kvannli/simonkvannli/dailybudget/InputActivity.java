package com.kvannli.simonkvannli.dailybudget;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;

public class InputActivity extends ActionBarActivity {

    private boolean minus = true;
    HistoryDBHandler historyDBHandler;
    float floatDefault = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_input);
        showMyAd();
        historyDBHandler = new HistoryDBHandler(this, null, null, 1);


        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            minus = extras.getBoolean("IS_MINUS");
        }
        setCorrectImage();
    }

    void setCorrectImage(){
        ImageView img= (ImageView) findViewById(R.id.imageView);
        if(minus){
            img.setImageResource(R.drawable.minusbutton);
        }else {
            img.setImageResource(R.drawable.plusbutton);
        }

    }

    public void donePressed(View v){
        EditText value = (EditText) findViewById(R.id.input_amount);
        EditText note = (EditText) findViewById(R.id.input_note);

        String stringValue = value.getText().toString();
        //If value field empty, make a toast
        if(stringValue == null || stringValue.trim().equals("")) {
            Toast.makeText(this, R.string.missing_input_text, Toast.LENGTH_LONG).show();
        }
        //else continue and save a history object
        else{
            String stringNote = note.getText().toString();
            stringNote = capitalizeFirstLetter(stringNote);

            double doubleValue = Double.parseDouble(stringValue);

            HistoryObject historyObject = new HistoryObject(stringNote, doubleValue, minus);
            historyDBHandler.addHistory(historyObject);

            SharedPreferences sharedPref = getSharedPreferences(getString(R.string.preference_file_key), Context.MODE_PRIVATE);
            float currentMoney = sharedPref.getFloat(getString(R.string.current_money), floatDefault);

            if (minus) {
                currentMoney -= Float.parseFloat(value.getText().toString());
            } else {
                currentMoney += Float.parseFloat(value.getText().toString());
            }
            SharedPreferences.Editor editor = sharedPref.edit();
            editor.putFloat(getString(R.string.current_money), currentMoney);
            editor.apply();

            //Finish activity and go back to previous activity
            finish();
        }
    }
    public void showMyAd(){
        AdView mAdView = (AdView) findViewById(R.id.adView);
        //Dont need to set banner_ad_id, does that in the activity_main.xml
        AdRequest adRequest = new AdRequest.Builder().build();
        mAdView.loadAd(adRequest);
    }

    public String capitalizeFirstLetter(String original) {
        if (original == null || original.length() == 0) {
            return original;
        }
        return original.substring(0, 1).toUpperCase() + original.substring(1);
    }
}
