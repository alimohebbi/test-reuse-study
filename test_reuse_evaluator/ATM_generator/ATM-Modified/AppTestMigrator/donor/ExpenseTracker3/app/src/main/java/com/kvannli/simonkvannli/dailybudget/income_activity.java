package com.kvannli.simonkvannli.dailybudget;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Calendar;

public class income_activity extends ActionBarActivity implements AdapterView.OnItemSelectedListener{

    //NO SKA Æ BYNN Å GJØR ENDRINGA
    //MASSE MASSE ENDRINGA
    //HHEEEEEELE DAGEN SKA DU DA SJØNN!!!!!!

    EditText editText;
    EditText valueText;
    TextView textView;
    MyDBHandler dbHandler;
    TextView total_income_view;
    public final static String EXTRA_MESSAGE = "com.example.simonkvannli.dailybudget.MESSAGE";
    Spinner spinner;

    String selected_time_item;

    //NYTT
    ListView list;
    CustomAdapter adapter;
    public  income_activity CustomListView = null;
    public ArrayList<ListModel> CustomListViewValuesArr = new ArrayList<ListModel>();
    //NYTT


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.income_activity);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        editText = (EditText) findViewById(R.id.editText);
        //textView = (TextView) findViewById(R.id.textView);
        valueText = (EditText) findViewById(R.id.editText2);
        dbHandler = new MyDBHandler(this, null, null, 1);
        total_income_view = (TextView) findViewById(R.id.total_income_view);

        //*******************************************
        //CUSTOM LIST VIEW
        CustomListView = this;

        /******** Take some data in Arraylist ( CustomListViewValuesArr ) ***********/
        setListData();

        Resources res =getResources();
        list= ( ListView )findViewById( R.id.list );  // List defined in XML ( See Below )

        /**************** Create Custom Adapter *********/
        adapter=new CustomAdapter( CustomListView, CustomListViewValuesArr,res );
        list.setAdapter( adapter );

        //SLUTT PÅ CUSTOM LISTVIEW
        //********************************************

        //printDatabase();
        printEditableDatabase();

        //MASSE STUFF FOR SPINNERN.
        //Spinnern består av d hær, implements AdapterView.OnItemSelectedListener, onItemSelected og onNothingSelect.
        spinner = (Spinner) findViewById(R.id.spinner);
        // Create an ArrayAdapter using the string array and a default spinner layout
        ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(this,
                R.array.spinner_array, android.R.layout.simple_spinner_item);
        // Specify the layout to use when the list of choices appears
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        // Apply the adapter to the spinner
        spinner.setAdapter(adapter);

        spinner.setOnItemSelectedListener(this);


    }


    //NYTT
    /****** Function to set data in ArrayList *************/
    public void setListData() {

        String dbString = dbHandler.databaseToString();
        CustomListViewValuesArr.clear();



        if(dbString == null || dbString.trim().equals("")){
            /**
            String[] emptyList = {};
            ListAdapter listAdapter = new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, emptyList);
            ListView incomeList = (ListView) findViewById(R.id.incomeList);
            incomeList.setAdapter(listAdapter);

            updateDailyMoney();
             */


        }else {
            //Lager to lister! En med og en uten ID (Format ID # Name : value)
            //Listen MED ID blir brukt av intent.
            //Listen UTEN ID blir brukt av listViewet.

            final String listWithID[] = dbString.split("\\r?\\n");
            for (String item : listWithID) {
                final ListModel sched = new ListModel();

                String[] parts = item.split(" : ");
                String[] firstParts = parts[0].split(" # ");
                String[] lastParts = parts[1].split(" % ");
                String id = firstParts[0];
                String name = firstParts[1];
                String value = lastParts[0];
                String interval = lastParts[1];

                if(interval.equals(getString(R.string.spinner_week))){
                    interval = getString(R.string.spinner_week);
                }else if(interval.equals(getString(R.string.spinner_bi_week))) {
                    interval = getString(R.string.spinner_bi_week);
                }else if(interval.equals(getString(R.string.spinner_year))){
                    interval = getString(R.string.spinner_year);
                }else if(interval.equals(getString(R.string.spinner_day))){
                    interval = getString(R.string.spinner_day);
                }else{//month
                    interval = getString(R.string.spinner_title);
                }



                /******* Firstly take data in model object ******/
                sched.setName(name);
                sched.setImage("wat");
                sched.setValue(value);
                sched.setId(id);
                sched.setInterval(interval);
                sched.setShow(value+"  "+interval);
                CustomListViewValuesArr.add(sched);
            }

        }

    }
    /*****************  This function used by adapter ****************/
    public void onItemClick(int mPosition)
    {
        ListModel tempValues = ( ListModel ) CustomListViewValuesArr.get(mPosition);

        String information = tempValues.getId()+" # "+tempValues.getName()+" : "+tempValues.getValue()+" % "+tempValues.getInterval();


        Intent intent = new Intent(income_activity.this, item_activity.class);
        intent.putExtra(EXTRA_MESSAGE, information);

        startActivity(intent);
        // SHOW ALERT

        //Toast.makeText(CustomListView, "ID: "+tempValues.getId()+" Name:"+tempValues.getName() +" Interval:"+tempValues.getInterval() +" Value:"+tempValues.getValue(), Toast.LENGTH_LONG).show();
    }//NYTT



    @Override
    public void onResume() {
        super.onResume();  // Always call the superclass method first

        printEditableDatabase();

    }




    public void printEditableDatabase(){
        updateDailyMoney();
        setListData();

        Resources res =getResources();
        list= ( ListView )findViewById( R.id.list );  // List defined in XML ( See Below )

        /**************** Create Custom Adapter *********/
        adapter=new CustomAdapter( CustomListView, CustomListViewValuesArr,res );
        list.setAdapter( adapter );



    }






    public void AddButtonClicked(View v){
        String input = editText.getText().toString();
        String input2 = valueText.getText().toString();
        if(input == null || input.trim().equals("") || input2 == null || input2.trim().equals("")){
            Toast.makeText(this, R.string.missing_input_text, Toast.LENGTH_LONG).show();
        }else {
            Incomes incomes = new Incomes((editText.getText().toString()).replace("\n", "").replace("\r", ""), Double.parseDouble(valueText.getText().toString()), selected_time_item);
            dbHandler.addIncome(incomes);
            //printDatabase();
            printEditableDatabase();
            clearInputFields();
        }
    }



    public void updateDailyMoney(){
        String[] items = dbHandler.databaseValuesAndIntervalToString().split("\\r?\\n");


        //OBS OBS this if statement might be wrong
        if(!items[0].equals("")){
            float total=0;
            for (String item:items){
                String[] currentItem = item.split(" % ");
                if(currentItem[1].equals(getString(R.string.spinner_title))) {
                    total += Float.parseFloat(currentItem[0]);
                }else if(currentItem[1].equals(getString(R.string.spinner_day))){
                    total += Float.parseFloat(currentItem[0])*daysThisMonth();
                }else if(currentItem[1].equals(getString(R.string.spinner_year))){
                    total += Float.parseFloat(currentItem[0])/12;
                }else if(currentItem[1].equals(getString(R.string.spinner_week))){
                    total += Float.parseFloat(currentItem[0])*4;
                }else if(currentItem[1].equals(getString(R.string.spinner_bi_week))){
                    total += Float.parseFloat(currentItem[0])*2;
                }
            }

            float dailyMoney = total/ daysThisMonth();

            SharedPreferences sharedPref = getSharedPreferences(getString(R.string.preference_file_key), Context.MODE_PRIVATE);

            SharedPreferences.Editor editor=sharedPref.edit();
            editor.putFloat(getString(R.string.daily_money),dailyMoney);
            editor.apply();
            System.out.println("TOTAL INCOME: "+total+"\n Every day: "+dailyMoney);
            total_income_view.setText(correctFormatOfFloat(total)+" "+getString(R.string.spinner_title));

        }else {
            System.out.println("Database is empty.");
            SharedPreferences sharedPref = getSharedPreferences(getString(R.string.preference_file_key), Context.MODE_PRIVATE);

            SharedPreferences.Editor editor=sharedPref.edit();
            editor.putFloat(getString(R.string.daily_money),0);
            editor.apply();
        }

    }

    public int daysThisMonth(){
        return Calendar.getInstance().getActualMaximum(Calendar.DAY_OF_MONTH);
    }


    public void clearInputFields(){
        editText.setText("");
        valueText.setText("");
    }


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
        return toReturn.replace(',','.');
    }

    /*public float correctFormatOfFloat(String x){
        float placeholder = Float.parseFloat(x);
        return Float.parseFloat(correctFormatOfFloat(placeholder));
    }*/

    @Override
    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
        System.out.println("Selected time item: "+parent.getItemAtPosition(position));

        selected_time_item = parent.getItemAtPosition(position).toString();

        // Showing selected spinner item
        //Toast.makeText(parent.getContext(), "Selected: " + selected_time_item, Toast.LENGTH_LONG).show();
        spinner.setPrompt(parent.getItemAtPosition(position).toString());

    }

    @Override
    public void onNothingSelected(AdapterView<?> parent) {

    }
}
