package me.writeily;

import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.support.v7.app.ActionBarActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;

import java.io.File;
import java.lang.reflect.Method;

/**
 * Created by jeff on 2014-08-20.
 */
public class PromptPinActivity extends ActionBarActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // Get the Intent (to check if coming from Settings)
        String action = getIntent().getAction();

        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar_nonelevated);
        if (toolbar != null) {
            setSupportActionBar(toolbar);
        }

        // Get the pin a user may have set
        String[] stringArray = getResources().getStringArray(R.array.possibleLocksValues);
        String lockType = PreferenceManager.getDefaultSharedPreferences(this).getString(getString(R.string.pref_lock_type_key), "");
        if (lockType == null || lockType.equals("") || stringArray[0].equals(lockType)) {
            Intent mainIntent = new Intent(this, MainActivity.class);
            startActivity(mainIntent);
            this.finish();
        } else if (stringArray[1].equals(lockType)) {
            Intent pinIntent = new Intent(this, PinActivity.class);
            startActivity(pinIntent);
            this.finish();
        } else if (stringArray[2].equals(lockType)) {
            Intent pinIntent = new Intent(this, AlphanumericPinActivity.class);
            startActivity(pinIntent);
            this.finish();
        }
    }

    protected void onPause() {
        super.onPause();

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
