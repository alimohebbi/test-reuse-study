package privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.ui.main;

import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;

import java.io.File;
import java.lang.reflect.Method;

import privacyfriendlyshoppinglist.secuso.org.privacyfriendlyshoppinglist.ui.tutorial.TutorialActivity;

/**
 * Created by yonjuni on 24.10.16.
 */

public class SplashActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        /* Create an Intent that will start the Menu-Activity. */
        Intent mainIntent = new Intent(SplashActivity.this, TutorialActivity.class);
        SplashActivity.this.startActivity(mainIntent);
        SplashActivity.this.finish();


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
