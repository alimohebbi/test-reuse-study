package com.kvannli.simonkvannli.dailybudget;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

public class feedback_activity extends ActionBarActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.feedback_activity);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    }

    public void sendMail(View view){
        EditText subject = (EditText) findViewById(R.id.editSubject);
        EditText text = (EditText) findViewById(R.id.editTextField);

        String subjectString = subject.getText().toString();
        String textString = text.getText().toString();



        Intent i = new Intent(Intent.ACTION_SEND);
        i.setType("message/rfc822");
        i.putExtra(Intent.EXTRA_EMAIL  , new String[]{getString(R.string.simons_gmail)});
        i.putExtra(Intent.EXTRA_SUBJECT, subjectString);
        i.putExtra(Intent.EXTRA_TEXT   , textString);
        try {
            startActivity(Intent.createChooser(i, getString(R.string.send_mail_text)));
        } catch (android.content.ActivityNotFoundException ex) {
            Toast.makeText(feedback_activity.this, R.string.no_mail_clients_installed_text, Toast.LENGTH_SHORT).show();
        }
    }

}
