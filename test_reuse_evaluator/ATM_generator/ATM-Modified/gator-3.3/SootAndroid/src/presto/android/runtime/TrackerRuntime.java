/*
 * TrackerRuntime.java - part of the GATOR project
 *
 * Copyright (c) 2014, 2015 The Ohio State University
 *
 * This file is distributed under the terms described in LICENSE in the
 * root directory.
 */
package presto.android.runtime;

import android.util.Log;

public class TrackerRuntime {
  public static void p(String tag, String msg) {
    Log.i(tag, msg);
  }
}
