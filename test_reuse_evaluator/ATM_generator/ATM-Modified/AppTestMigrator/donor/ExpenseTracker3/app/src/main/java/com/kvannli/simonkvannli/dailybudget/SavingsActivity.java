package com.kvannli.simonkvannli.dailybudget;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Arrays;
import java.util.Calendar;

public class SavingsActivity extends ActionBarActivity {

    private SeekBar seekBar;
    private EditText editText;
    public boolean updateText = false;

    private TextView dailyAmount;
    private TextView weeklyAmount;
    private TextView monthlyAmount;
    private TextView yearlyAmount;
    private double dailyMoney;
    private String currentNumber;
    private String moneyType;
    double num;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("");
        setContentView(R.layout.activity_savings);
        initializeVariables();

        // Initialize the textview with '0'.
        editText.setText(""+getSavingPercentage());

        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            int progress = 0;

            @Override
            public void onProgressChanged(SeekBar seekBar, int progresValue, boolean fromUser) {
                progress = progresValue;
                if(updateText) {
                    double dprogress = (double) progress / 10;
                    editText.setText("" + dprogress, TextView.BufferType.EDITABLE);
                }
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {
                updateText = true;
            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {
                updateText = false;
            }
        });
    }

    @Override
    protected void onPause() {
        super.onPause();
        setSavingPercentage(num);
    }

    // A private method to help us initialize our variables.
    private void initializeVariables() {
        seekBar = (SeekBar) findViewById(R.id.seekBar1);
        editText = (EditText) findViewById(R.id.editText);
        dailyAmount = (TextView) findViewById(R.id.dailyAmount);
        weeklyAmount = (TextView) findViewById(R.id.weeklyAmount);
        monthlyAmount = (TextView) findViewById(R.id.monthlyAmount);
        yearlyAmount = (TextView) findViewById(R.id.yearlyAmount);
        dailyMoney = (double)getDailyMoney();
        SharedPreferences sharedPref = getSharedPreferences(getString(R.string.preference_file_key), Context.MODE_PRIVATE);
        currentNumber = sharedPref.getString(getString(R.string.moneyDesimal),"2");
        moneyType = sharedPref.getString(getString(R.string.moneyType),"default");

        editText.addTextChangedListener(new TextWatcher() {
            @Override
            public void afterTextChanged(Editable s) {
                // TODO Auto-generated method stub
                try {
                    if (!s.toString().isEmpty()) {
                        //System.out.println("AFTER" + s.toString());
                        String ns = s.toString();
                        num = Double.parseDouble(ns);
                        if (num > 100.0) {
                            editText.setText("" + 100, TextView.BufferType.EDITABLE);
                        } else if (num < 0.0) {
                            editText.setText("" + 0, TextView.BufferType.EDITABLE);
                        }
                        seekBar.setProgress((int)(num*10));
                        updateAllSavings(num);
                    }
                }catch (Exception e){
                    editText.setText("" + 0, TextView.BufferType.EDITABLE);
                    System.out.println(e);
                }


            }

            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                // TODO Auto-generated method stub
            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                //System.out.println(s+":"+start+":"+before+":"+count);
                //Validate input to make sure that it fits your requirements
            }


        });
    }

    public double getSavingPercentage(){
        SharedPreferences sharedPref = getSharedPreferences(getString(R.string.preference_file_key), Context.MODE_PRIVATE);
        return (double)sharedPref.getFloat(getString(R.string.savingPercentage),0);

    }
    public void setSavingPercentage(double num){
        SharedPreferences sharedPref = getSharedPreferences(getString(R.string.preference_file_key), Context.MODE_PRIVATE);
        SharedPreferences.Editor editor=sharedPref.edit();
        editor.putFloat(getString(R.string.savingPercentage),(float)num);
        editor.apply();
    }

    public void updateAllSavings(double num) {
        double percentage = num/100;
        dailyAmount.setText(""+correctFormatOfFloat((float) (dailyMoney*percentage)));
        weeklyAmount.setText(""+correctFormatOfFloat((float) ((dailyMoney*7)*percentage)));
        monthlyAmount.setText(""+correctFormatOfFloat((float) ((dailyMoney*30.4)*percentage)));
        yearlyAmount.setText(""+correctFormatOfFloat((float) ((dailyMoney*365)*percentage)));




    }


    public String correctFormatOfFloat(float x){

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
        toReturn= toReturn.replace(",",".").replace("−","-");

        //SYMBOLS THAT MUST GO BEFORE THE    MONEY
        String[] symbolFirstArray = {"$","¥","£","\u20B9"};

        if(Arrays.asList(symbolFirstArray).contains(moneyType)){
            return moneyType+" "+toReturn;
        }else {
            return toReturn+" "+moneyType;
        }

    }

    public float getDailyMoney(){

        SharedPreferences sharedPref = getSharedPreferences(getString(R.string.preference_file_key), Context.MODE_PRIVATE);

        float income = sharedPref.getFloat(getString(R.string.daily_money),0);
        float expenses = sharedPref.getFloat(getString(R.string.daily_expenses),0);

        return income-expenses;


    }

}
