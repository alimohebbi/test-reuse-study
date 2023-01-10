package com.kvannli.simonkvannli.dailybudget;

import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.TextView;

public class settings_activity extends ActionBarActivity{

    ArrayAdapter<String> adapter;
    SharedPreferences sharedPref;
    TextView current_currency_text;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.settings_activity);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        adapter = new ArrayAdapter<String>(this,
                android.R.layout.simple_spinner_dropdown_item, getResources().getStringArray(R.array.currency_name_array));
        sharedPref = getSharedPreferences(getString(R.string.preference_file_key), Context.MODE_PRIVATE);
        current_currency_text = (TextView)findViewById(R.id.current_currency_view);

        updateValues();

    }

    public void updateValues(){
        current_currency_text.setText(getString(R.string.selected_currency_text)+getCurrencyBasedOnSymbol(sharedPref.getString(getString(R.string.moneyType)," ")));


    }

    /*
    Currency valget funker som følger:
    onAClick åpner en liste av alle currency_name_array og viser NOK, USD osv.
    Den som blir trykket på, vil dets symbol bli lagret i sharedPreferences
    UpdateValues henter symbolet lagret i sharedPrefs, og kjører getCurrencyBasedOnSymbol for å få
    tilbake currency vi vil vise i settings.
     */
    public void onAClick(View w) {
        new AlertDialog.Builder(this)
                .setTitle(getString(R.string.selected_text)+getCurrencyBasedOnSymbol(sharedPref.getString(getString(R.string.moneyType)," ")))
                .setAdapter(adapter, new DialogInterface.OnClickListener() {

                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        String[] theArray = getResources().getStringArray(R.array.money_spinner_array);

                        System.out.println("Currency sign: "+theArray[which]);

                        SharedPreferences.Editor editor=sharedPref.edit();
                        editor.putString(getString(R.string.moneyType),theArray[which]);
                        editor.putString(getString(R.string.moneyDesimal),setDesimalBasedOnSymbol(theArray[which]));
                        editor.apply();
                        updateValues();

                        dialog.dismiss();
                    }
                }).create().show();
    }


    public String getCurrencyBasedOnSymbol(String symbol){
        String[] symbolArray = getResources().getStringArray(R.array.money_spinner_array);
        String[] currencyArray = getResources().getStringArray(R.array.currency_name_array);

        for(int i=0;i<symbolArray.length;i++){
            if(symbolArray[i].equals(symbol)){
                return currencyArray[i];
            }
        }
        return " ";
    }

    public String setDesimalBasedOnSymbol(String symbol){
        String[] symbolArray = getResources().getStringArray(R.array.money_spinner_array);
        String[] currencyArray = getResources().getStringArray(R.array.currency_desimal_array);

        for(int i=0;i<symbolArray.length;i++){
            if(symbolArray[i].equals(symbol)){
                return currencyArray[i];
            }
        }
        return "2";
    }

    public void feedbackClicked(View v){
        startActivity(new Intent(settings_activity.this, feedback_activity.class));

    }

    public void likeClicked(View v){
        Uri uri = Uri.parse("market://details?id=" + getApplicationContext().getPackageName());
        Intent goToMarket = new Intent(Intent.ACTION_VIEW, uri);
        // To count with Play market backstack, After pressing back button,
        // to taken back to our application, we need to add following flags to intent.
        goToMarket.addFlags(Intent.FLAG_ACTIVITY_NO_HISTORY |
                Intent.FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET |
                Intent.FLAG_ACTIVITY_MULTIPLE_TASK);
        try {
            startActivity(goToMarket);
        } catch (ActivityNotFoundException e) {
            startActivity(new Intent(Intent.ACTION_VIEW,
                    Uri.parse("http://play.google.com/store/apps/details?id=" + getApplicationContext().getPackageName())));
        }
    }

}
