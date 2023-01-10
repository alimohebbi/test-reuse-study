package com.kvannli.simonkvannli.dailybudget;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

public class item_activity extends ActionBarActivity implements AdapterView.OnItemSelectedListener{

    EditText editValue;
    EditText editName;
    MyDBHandler dbHandler;
    Spinner spinner;
    String selected_time_item;
    int id;

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.item_activity);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        dbHandler = new MyDBHandler(this, null, null, 1);

        editName = (EditText)findViewById(R.id.editName);
        editValue = (EditText)findViewById(R.id.editValue);

        Intent intent = getIntent();
        String message = intent.getStringExtra(income_activity.EXTRA_MESSAGE);

        String[] parts = message.split(" : ");
        String part1 = parts[0];
        String[] backParts = parts[1].split(" % ");
        String value = backParts[0];
        String interval = backParts[1];

        String[] idparts = part1.split(" # ");
        id = Integer.parseInt(idparts[0]);
        editName.setText(idparts[1]);
        editValue.setText(value);
        selected_time_item = interval;


        //MASSE STUFF FOR SPINNERN.
        //Spinnern består av d hær, implements AdapterView.OnItemSelectedListener, onItemSelected og onNothingSelect.
        spinner = (Spinner) findViewById(R.id.spinner3);
        // Create an ArrayAdapter using the string array and a default spinner layout
        ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(this,
                R.array.spinner_array, android.R.layout.simple_spinner_item);
        // Specify the layout to use when the list of choices appears
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        // Apply the adapter to the spinner
        spinner.setAdapter(adapter);

        spinner.setOnItemSelectedListener(this);

        spinner.setPrompt(selected_time_item);//Veit ikke om den hær funke...



    }

    public void UpdateButtonClicked(View view){
        String input = editName.getText().toString().replace("\n", "").replace("\r", "");
        String input2 = editValue.getText().toString().replace(",",".");
        if(input == null || input.trim().equals("") || input2 == null || input2.trim().equals("")){
            Toast.makeText(this, R.string.missing_input_text, Toast.LENGTH_LONG).show();
        }else {
            dbHandler.changeRowBasedOnId(id, input, Double.parseDouble(input2), selected_time_item);

            Toast.makeText(this, R.string.update_successful_text, Toast.LENGTH_LONG).show();
            super.onBackPressed();
        }
    }

    public void CancelButtonClicked(View v){
        super.onBackPressed();
    }

    public void DeleteButtonClicked(View v){
        dbHandler.deleteIncome(id);
        Toast.makeText(this, R.string.income_deleted_text, Toast.LENGTH_LONG).show();
        super.onBackPressed();



    }
    @Override
    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
        System.out.println("Selected time item: "+parent.getItemAtPosition(position));

        selected_time_item = parent.getItemAtPosition(position).toString();

        // Showing selected spinner item
        Toast.makeText(parent.getContext(), getString(R.string.selected_text) + selected_time_item, Toast.LENGTH_LONG).show();
        spinner.setPrompt(parent.getItemAtPosition(position).toString());

    }

    @Override
    public void onNothingSelected(AdapterView<?> parent) {

    }
}
