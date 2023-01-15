package org.openintents.shopping.ui;

import org.openintents.intents.GeneralIntents;
import org.openintents.shopping.R;
import org.openintents.shopping.library.provider.ShoppingContract;
import org.openintents.shopping.library.provider.ShoppingContract.Lists;

import android.app.ListActivity;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;

import java.io.File;
import java.lang.reflect.Method;

/**
 * Activity to show list of shopping lists Used for INSERT_FROM_EXTRAS
 */
public class ShoppingListsActivity extends ListActivity {
	protected void onStop() {
		super.onStop();

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
