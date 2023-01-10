package com.kvannli.simonkvannli.dailybudget;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;

public class updateHistoryActivity extends ActionBarActivity {

    HistoryDBHandler historyDBHandler;
    EditText editName;
    EditText editValue;
    HistoryObject historyObject;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_update_history);

        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        historyDBHandler = new HistoryDBHandler(this, null, null, 1);

        editName = (EditText)findViewById(R.id.editName);
        editValue = (EditText)findViewById(R.id.editValue);

        Intent intent = getIntent();
        int id = intent.getIntExtra(HistoryActivity.EXTRA_MESSAGE, -1);
        System.out.println("MESSAGE RECIEVED: "+id);

        if(id != -1){ //-1 if it didnt work
            historyObject = historyDBHandler.getHistoryObject(id);

            editName.setText(historyObject.get_historyNote());
            editValue.setText(""+historyObject.get_value());
        }

    }

    public void UpdateButtonClicked(View view){
        double diff = Double.parseDouble(editValue.getText().toString()) - historyObject.get_value();

        if (historyObject.is_minus()) {
            subtractTotalMoney(diff);
        } else {
            addTotalMoney(diff);
        }

        historyDBHandler.changeRowBasedOnId(historyObject.get_id(), editName.getText().toString(), Double.parseDouble(editValue.getText().toString()));
        super.onBackPressed();

    }
    public void DeleteButtonClicked(View view){
        double diff = historyObject.get_value();
        if (historyObject.is_minus()) {
            addTotalMoney(diff);
        } else {
            subtractTotalMoney(diff);
        }
        historyDBHandler.deleteHistory(historyObject.get_id());
        super.onBackPressed();
    }
    public void CancelButtonClicked(View view){
        super.onBackPressed();
    }


    public void addTotalMoney(double amount){
        SharedPreferences sharedPref = getSharedPreferences(getString(R.string.preference_file_key), Context.MODE_PRIVATE);
        float currentMoney = sharedPref.getFloat(getString(R.string.current_money), 0);
        currentMoney += amount;
        SharedPreferences.Editor editor = sharedPref.edit();
        editor.putFloat(getString(R.string.current_money), currentMoney);
        editor.apply();
    }

    public void subtractTotalMoney(double amount){
        SharedPreferences sharedPref = getSharedPreferences(getString(R.string.preference_file_key), Context.MODE_PRIVATE);
        float currentMoney = sharedPref.getFloat(getString(R.string.current_money), 0);
        currentMoney -= amount;
        SharedPreferences.Editor editor = sharedPref.edit();
        editor.putFloat(getString(R.string.current_money), currentMoney);
        editor.apply();
    }
}
