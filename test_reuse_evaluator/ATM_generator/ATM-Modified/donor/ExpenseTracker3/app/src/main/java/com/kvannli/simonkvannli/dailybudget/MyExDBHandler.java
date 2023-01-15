package com.kvannli.simonkvannli.dailybudget;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/**
 * Created by simonkvannli on 10/12/15.
 */
public class MyExDBHandler extends SQLiteOpenHelper {

    // --------------------EXPENSE --------------------------------
    private static final int DATABASE_VERSION = 1;
    public static final String DATABASE_NAME = "expense.db";

    //Tablenavn og kolonnenavn
    public static final String TABLE_NAME = "expense";
    public static final String COLUMN_ID = "_id";
    public static final String COLUMN_EXPENSENAME = "expenseName";
    public static final String COLUMN_VALUE = "value";
    public static final String COLUMN_INTERVAL = "interval";




    public MyExDBHandler(Context context, String name, SQLiteDatabase.CursorFactory factory, int version) {
        super(context, DATABASE_NAME, factory, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        String SQL_CREATE_ENTRIES =
                "CREATE TABLE " + TABLE_NAME + " (" +
                        COLUMN_ID + " INTEGER PRIMARY KEY AUTOINCREMENT, " +
                        COLUMN_EXPENSENAME + " TEXT,  " +
                        COLUMN_VALUE + " DOUBLE,  " +
                        COLUMN_INTERVAL + " TEXT "+
                        " )";

        db.execSQL(SQL_CREATE_ENTRIES);

    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS "+ TABLE_NAME);
        onCreate(db);
    }

    //ADD EXPENSE TO DB
    public void addExpense(Expenses expense){
        ContentValues values = new ContentValues();
        values.put(COLUMN_EXPENSENAME, expense.get_expenseName());
        values.put(COLUMN_VALUE, expense.get_value());
        values.put(COLUMN_INTERVAL, expense.get_interval());

        SQLiteDatabase db = getWritableDatabase();
        db.insert(TABLE_NAME, null, values);
        db.close();
    }

    //DELETE ROW IN DB
    public void deleteExpense(int id){
        SQLiteDatabase db = getWritableDatabase();
        db.execSQL("DELETE FROM "+ TABLE_NAME + " WHERE "+ COLUMN_ID + " =\"" +id+ "\";" );
        db.close();

    }

    //Database string MED ID.
    public String databaseToString(){
        String dbString = "";
        SQLiteDatabase db = getWritableDatabase();
        String query = "SELECT * FROM " + TABLE_NAME + " WHERE 1";

        Cursor c = db.rawQuery(query, null);
        c.moveToFirst();

        while(!c.isAfterLast()){
            if(c.getString(c.getColumnIndex("expenseName"))!= null){
                dbString += c.getString(c.getColumnIndex("_id"));
                dbString += " # ";
                dbString += c.getString(c.getColumnIndex("expenseName"));
                dbString += " : ";
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

    }

    //Database string UTEN ID!
    /*public String databaseToUserString(){
        String dbString = "";
        SQLiteDatabase db = getWritableDatabase();
        String query = "SELECT * FROM " + TABLE_NAME + " WHERE 1";

        Cursor c = db.rawQuery(query, null);
        c.moveToFirst();

        while(!c.isAfterLast()){
            if(c.getString(c.getColumnIndex("expenseName"))!= null){
                dbString += c.getString(c.getColumnIndex("expenseName"));
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

    public void changeRowBasedOnId(int id,String newName, double newValue,String newInterval){
        SQLiteDatabase db = getWritableDatabase();
        System.out.println("Changing row based on id!");


        ContentValues cv = new ContentValues();
        cv.put(COLUMN_EXPENSENAME,newName); //These Fields should be your String values of actual column names
        cv.put(COLUMN_VALUE,newValue);
        cv.put(COLUMN_INTERVAL, newInterval);

        db.update(TABLE_NAME, cv, "_id="+id, null);

        db.close();

    }

    /*public String databaseValuesToString(){
        String dbString = "";
        SQLiteDatabase db = getWritableDatabase();
        String query = "SELECT * FROM " + TABLE_NAME + " WHERE 1";

        Cursor c = db.rawQuery(query, null);
        c.moveToFirst();

        while(!c.isAfterLast()){
            if(c.getString(c.getColumnIndex("expenseName"))!= null){
                dbString += c.getString(c.getColumnIndex("value"));
                dbString += "\n";

            }
            c.moveToNext();
        }
        db.close();
        System.out.print("---------------------------"+"\n DATABASE: \n"+dbString);
        return dbString;
    }*/
    public String databaseValuesAndIntervalToString(){
        String dbString = "";
        SQLiteDatabase db = getWritableDatabase();
        String query = "SELECT * FROM " + TABLE_NAME + " WHERE 1";

        Cursor c = db.rawQuery(query, null);
        c.moveToFirst();

        while(!c.isAfterLast()){
            if(c.getString(c.getColumnIndex("expenseName"))!= null){
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
    }

}