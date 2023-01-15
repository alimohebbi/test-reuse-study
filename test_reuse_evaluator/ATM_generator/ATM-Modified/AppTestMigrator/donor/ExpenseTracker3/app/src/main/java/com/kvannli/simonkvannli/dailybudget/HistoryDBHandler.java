package com.kvannli.simonkvannli.dailybudget;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Created by simonkvannli on 10/12/15.
 */
public class HistoryDBHandler extends SQLiteOpenHelper {

    // --------------------INCOME --------------------------------
    private static final int DATABASE_VERSION = 1;
    public static final String DATABASE_NAME = "history.db";

    //Tablenavn og kolonnenavn
    public static final String TABLE_NAME = "historyTable";
    public static final String COLUMN_ID = "_id";
    public static final String COLUMN_NOTE = "note";
    public static final String COLUMN_VALUE = "value";
    public static final String COLUMN_MINUS = "minus";
    public static final String COLUMN_DATE_TIME_TEXT = "datetime";



    public HistoryDBHandler(Context context, String name, SQLiteDatabase.CursorFactory factory, int version) {
        super(context, DATABASE_NAME, factory, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        String SQL_CREATE_ENTRIES =
                "CREATE TABLE " + TABLE_NAME + " (" +
                        COLUMN_ID + " INTEGER PRIMARY KEY AUTOINCREMENT, " +
                        COLUMN_NOTE + " TEXT,  " +
                        COLUMN_VALUE + " DOUBLE,  " +
                        COLUMN_MINUS + " BOOLEAN, "+
                        COLUMN_DATE_TIME_TEXT + " TEXT"+
                        " )";

        db.execSQL(SQL_CREATE_ENTRIES);

    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS "+ TABLE_NAME);
        onCreate(db);
    }

    public String getCurrentTimestamp(){
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String currentDateTime = dateFormat.format(new Date()); // Find todays date
        return currentDateTime;
    }

    //ADD HISTORY TO DB
    public void addHistory(HistoryObject historyObject){
        ContentValues values = new ContentValues();
        values.put(COLUMN_NOTE, historyObject.get_historyNote());
        values.put(COLUMN_VALUE, historyObject.get_value());
        values.put(COLUMN_MINUS, historyObject.is_minus());
        values.put(COLUMN_DATE_TIME_TEXT, getCurrentTimestamp());

        SQLiteDatabase db = getWritableDatabase();
        db.insert(TABLE_NAME, null, values);
        db.close();
    }

    //DELETE ROW IN DB
    public void deleteHistory(int id){
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("DELETE FROM "+ TABLE_NAME + " WHERE "+ COLUMN_ID + " =\"" +id+ "\";" );
        db.close();

    }

    public HistoryObject getHistoryObject(int given_id){
        String dbString = "";
        SQLiteDatabase db = getWritableDatabase();
        String query = "SELECT * FROM " + TABLE_NAME + " WHERE " + COLUMN_ID + "=" + given_id + " ORDER BY "+COLUMN_DATE_TIME_TEXT+" DESC";

        Cursor c = db.rawQuery(query, null);
        c.moveToFirst();

        String note = c.getString(c.getColumnIndex("note"));
        double value = c.getDouble(c.getColumnIndex("value"));
        boolean minus = (c.getString(c.getColumnIndex("minus"))).equals("1") ? true : false;
        String dateTime = c.getString(c.getColumnIndex("datetime"));
        int id = c.getInt(c.getColumnIndex("_id"));
        HistoryObject obj = new HistoryObject(id, note, value, minus, dateTime);

        db.close();
        return obj;
    }

    public void changeRowBasedOnId(int id, String newName, double newValue){
        SQLiteDatabase db = getWritableDatabase();
        System.out.println("Changing row based on id!");


        ContentValues cv = new ContentValues();
        cv.put(COLUMN_NOTE,newName); //These Fields should be your String values of actual column names
        cv.put(COLUMN_VALUE,newValue);
        db.update(TABLE_NAME, cv, "_id="+id, null);

        db.close();

    }

    //Database string MED ID.
    public List<HistoryObject> getAllHistoryObjects(){

        String dbString = "";
        SQLiteDatabase db = getWritableDatabase();
        String query = "SELECT * FROM " + TABLE_NAME + " WHERE 1 ORDER BY "+COLUMN_DATE_TIME_TEXT+" DESC";

        Cursor c = db.rawQuery(query, null);
        c.moveToFirst();

        List<HistoryObject> historyObjects = new ArrayList<>();

        while(!c.isAfterLast()){
            if(c.getString(c.getColumnIndex("value"))!= null){

                String note = c.getString(c.getColumnIndex("note"));
                double value = c.getDouble(c.getColumnIndex("value"));
                boolean minus = (c.getString(c.getColumnIndex("minus"))).equals("1") ? true : false;
                String dateTime = c.getString(c.getColumnIndex("datetime"));
                int id = c.getInt(c.getColumnIndex("_id"));
                HistoryObject obj = new HistoryObject(id, note, value, minus, dateTime);
                historyObjects.add(obj);

            }
            c.moveToNext();
        }
        db.close();

        return historyObjects;

    }

    //Database string MED ID.
    public List<HistoryObject> getAllHistoryObjectsPlus(){

        String dbString = "";
        SQLiteDatabase db = getWritableDatabase();
        String query = "SELECT * FROM " + TABLE_NAME + " WHERE 1 AND "+COLUMN_MINUS+" = 0 ORDER BY "+COLUMN_DATE_TIME_TEXT+" DESC";

        Cursor c = db.rawQuery(query, null);
        c.moveToFirst();

        List<HistoryObject> historyObjects = new ArrayList<>();

        while(!c.isAfterLast()){
            if(c.getString(c.getColumnIndex("value"))!= null){

                String note = c.getString(c.getColumnIndex("note"));
                double value = c.getDouble(c.getColumnIndex("value"));
                boolean minus = (c.getString(c.getColumnIndex("minus"))).equals("1") ? true : false;
                String dateTime = c.getString(c.getColumnIndex("datetime"));
                int id = c.getInt(c.getColumnIndex("_id"));

                HistoryObject obj = new HistoryObject(id,note, value, minus, dateTime);
                historyObjects.add(obj);

            }
            c.moveToNext();
        }
        db.close();

        return historyObjects;

    }
    //Database string MED ID.
    public List<HistoryObject> getAllHistoryObjectsMinus(){

        String dbString = "";
        SQLiteDatabase db = getWritableDatabase();
        String query = "SELECT * FROM " + TABLE_NAME + " WHERE 1 AND "+COLUMN_MINUS+" = 1 ORDER BY "+COLUMN_DATE_TIME_TEXT+" DESC";

        Cursor c = db.rawQuery(query, null);
        c.moveToFirst();

        List<HistoryObject> historyObjects = new ArrayList<>();

        while(!c.isAfterLast()){
            if(c.getString(c.getColumnIndex("value"))!= null){

                String note = c.getString(c.getColumnIndex("note"));
                double value = c.getDouble(c.getColumnIndex("value"));
                boolean minus = (c.getString(c.getColumnIndex("minus"))).equals("1") ? true : false;
                String dateTime = c.getString(c.getColumnIndex("datetime"));
                int id = c.getInt(c.getColumnIndex("_id"));
                HistoryObject obj = new HistoryObject(id, note, value, minus, dateTime);
                historyObjects.add(obj);

            }
            c.moveToNext();
        }
        db.close();

        return historyObjects;

    }

    //Database string MED ID.
    public List<HistoryObject> get30HistoryObjects(){

        String dbString = "";
        SQLiteDatabase db = getWritableDatabase();
        String query = "SELECT * FROM " + TABLE_NAME + " WHERE 1 ORDER BY "+COLUMN_DATE_TIME_TEXT+" DESC LIMIT 30";

        Cursor c = db.rawQuery(query, null);
        c.moveToFirst();

        List<HistoryObject> historyObjects = new ArrayList<>();

        while(!c.isAfterLast()){
            if(c.getString(c.getColumnIndex("value"))!= null){

                String note = c.getString(c.getColumnIndex("note"));
                double value = c.getDouble(c.getColumnIndex("value"));
                boolean minus = (c.getString(c.getColumnIndex("minus"))).equals("1") ? true : false;
                String dateTime = c.getString(c.getColumnIndex("datetime"));
                int id = c.getInt(c.getColumnIndex("_id"));
                HistoryObject obj = new HistoryObject(id, note, value, minus, dateTime);
                historyObjects.add(obj);

            }
            c.moveToNext();
        }
        db.close();

        return historyObjects;

    }
    //Database string MED ID.
    public List<HistoryObject> get30HistoryObjectsPlus(){

        String dbString = "";
        SQLiteDatabase db = getWritableDatabase();
        String query = "SELECT * FROM " + TABLE_NAME + " WHERE 1 AND "+COLUMN_MINUS+ "= 0 ORDER BY "+COLUMN_DATE_TIME_TEXT+" DESC LIMIT 30";

        Cursor c = db.rawQuery(query, null);
        c.moveToFirst();

        List<HistoryObject> historyObjects = new ArrayList<>();

        while(!c.isAfterLast()){
            if(c.getString(c.getColumnIndex("value"))!= null){

                String note = c.getString(c.getColumnIndex("note"));
                double value = c.getDouble(c.getColumnIndex("value"));
                boolean minus = (c.getString(c.getColumnIndex("minus"))).equals("1") ? true : false;
                String dateTime = c.getString(c.getColumnIndex("datetime"));
                int id = c.getInt(c.getColumnIndex("_id"));
                HistoryObject obj = new HistoryObject(id, note, value, minus, dateTime);
                historyObjects.add(obj);

            }
            c.moveToNext();
        }
        db.close();

        return historyObjects;

    }
    //Database string MED ID.
    public List<HistoryObject> get30HistoryObjectsMinus(){

        String dbString = "";
        SQLiteDatabase db = getWritableDatabase();
        String query = "SELECT * FROM " + TABLE_NAME + " WHERE 1 AND "+COLUMN_MINUS+ "= 1 ORDER BY "+COLUMN_DATE_TIME_TEXT+" DESC LIMIT 30";

        Cursor c = db.rawQuery(query, null);
        c.moveToFirst();

        List<HistoryObject> historyObjects = new ArrayList<>();

        while(!c.isAfterLast()){
            if(c.getString(c.getColumnIndex("value"))!= null){

                String note = c.getString(c.getColumnIndex("note"));
                double value = c.getDouble(c.getColumnIndex("value"));
                boolean minus = (c.getString(c.getColumnIndex("minus"))).equals("1") ? true : false;
                String dateTime = c.getString(c.getColumnIndex("datetime"));
                int id = c.getInt(c.getColumnIndex("_id"));
                HistoryObject obj = new HistoryObject(id, note, value, minus, dateTime);
                historyObjects.add(obj);

            }
            c.moveToNext();
        }
        db.close();

        return historyObjects;

    }

    //Only return history of "minus"
    public List<HistoryObject> databaseToStringOnlyMinus(){
        String dbString = "";
        SQLiteDatabase db = getWritableDatabase();
        String query = "SELECT * FROM " + TABLE_NAME + " WHERE 1 AND "+COLUMN_MINUS+ "= 1 ORDER BY "+COLUMN_DATE_TIME_TEXT+" DESC";

        Cursor c = db.rawQuery(query, null);
        c.moveToFirst();

        List<HistoryObject> historyObjects = new ArrayList<HistoryObject>();

        while(!c.isAfterLast()){
            if(c.getString(c.getColumnIndex("value"))!= null){
                String note = c.getString(c.getColumnIndex("note"));
                double value = Double.parseDouble(c.getString(c.getColumnIndex("value")));
                boolean minus = Boolean.parseBoolean(c.getString(c.getColumnIndex("minus")));
                int id = c.getInt(c.getColumnIndex("_id"));
                HistoryObject obj = new HistoryObject(id, note, value, minus);
                historyObjects.add(obj);

            }
            c.moveToNext();
        }
        db.close();
        return historyObjects;

    }

    //Only return history of "plus"
    /*public String databaseToStringOnlyPlus(){
        String dbString = "";
        SQLiteDatabase db = getWritableDatabase();
        String query = "SELECT * FROM " + TABLE_NAME + " WHERE 1 AND "+COLUMN_MINUS+ "= 0 ORDER BY "+COLUMN_DATE_TIME_TEXT+" DESC";

        Cursor c = db.rawQuery(query, null);
        c.moveToFirst();
        while(!c.isAfterLast()){
            if(c.getString(c.getColumnIndex("value"))!= null){
                dbString += c.getString(c.getColumnIndex("_id"));
                dbString += " # ";
                dbString += c.getString(c.getColumnIndex("note"));
                dbString += " : ";
                dbString += c.getString(c.getColumnIndex("value"));
                dbString += " % ";
                dbString += c.getString(c.getColumnIndex("minus"));
                dbString += " | ";
                dbString += c.getString(c.getColumnIndex("datetime"));
                dbString += "\n";

            }
            c.moveToNext();
        }
        db.close();
        System.out.print("---------------------------"+"\n HISTORY DATABASE: \n"+dbString);
        return dbString;

    }*/

    //Database string UTEN ID!
    /*public String databaseToUserString(){
        String dbString = "";
        SQLiteDatabase db = getWritableDatabase();
        String query = "SELECT * FROM " + TABLE_NAME + " WHERE 1";

        Cursor c = db.rawQuery(query, null);
        c.moveToFirst();

        while(!c.isAfterLast()){
            if(c.getString(c.getColumnIndex("incomeName"))!= null){
                dbString += c.getString(c.getColumnIndex("incomeName"));
                dbString += " : ";
                dbString += c.getString(c.getColumnIndex("value"));
                dbString += "\n";

            }
            c.moveToNext();
        }
        db.close();
        System.out.print("---------------------------"+"\n DATABASE: \n"+dbString);
        return dbString;

    }*/



    /*public String databaseValuesToString(){
        String dbString = "";
        SQLiteDatabase db = getWritableDatabase();
        String query = "SELECT * FROM " + TABLE_NAME + " WHERE 1";

        Cursor c = db.rawQuery(query, null);
        c.moveToFirst();

        while(!c.isAfterLast()){
            if(c.getString(c.getColumnIndex("incomeName"))!= null){
                dbString += c.getString(c.getColumnIndex("value"));
                dbString += "\n";

            }
            c.moveToNext();
        }
        db.close();
        System.out.print("---------------------------"+"\n DATABASE: \n"+dbString);
        return dbString;
    }*/
    /*public String databaseValuesAndIntervalToString(){
        String dbString = "";
        SQLiteDatabase db = getWritableDatabase();
        String query = "SELECT * FROM " + TABLE_NAME + " WHERE 1";

        Cursor c = db.rawQuery(query, null);
        c.moveToFirst();

        while(!c.isAfterLast()){
            if(c.getString(c.getColumnIndex("incomeName"))!= null){
                dbString += c.getString(c.getColumnIndex("value"));
                dbString += " % ";
                dbString += c.getString(c.getColumnIndex("interval"));
                dbString += "\n";

            }
            c.moveToNext();
        }
        db.close();
        System.out.print("---------------------------"+"\n DATABASE: \n"+dbString);
        return dbString;
    }*/

}