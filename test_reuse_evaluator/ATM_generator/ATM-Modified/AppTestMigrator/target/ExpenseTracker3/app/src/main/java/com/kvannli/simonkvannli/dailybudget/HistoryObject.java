package com.kvannli.simonkvannli.dailybudget;

import java.util.Calendar;
import java.util.Date;

/**
 * Created by simonkvannli on 10/12/15.
 */
public class HistoryObject {

    private int _id;
    private String _historyNote;
    private double _value;
    private boolean _minus;
    private String _dateTime;
    private String _date;
    private String _time;

    //public HistoryObject(){}

    public HistoryObject(int id, String historyNote, double value, boolean minus){
        this._id = id;
        this._historyNote = historyNote;
        this._value = value;
        this._minus= minus;
    }
    public HistoryObject(String historyNote, double value, boolean minus){
        this._historyNote = historyNote;
        this._value = value;
        this._minus= minus;
    }

    public HistoryObject(int id, String historyNote, double value, boolean minus, String datetime){
        this._id = id;
        this._historyNote = historyNote;
        this._value = value;
        this._minus= minus;
        this._dateTime = datetime;

        String[] parts = datetime.split(" ");
        _date = parts[0];
        _time = parts[1];
    }

    //public String get_dateTime(){return _dateTime;}

    public String get_date(){return _date;}

    public String get_time(){
        String[] parts = _time.split(":");
        return parts[0]+":"+parts[1];
    }


    public int get_id() {
        return _id;
    }

    /*public void set_id(int _id) {
        this._id = _id;
    }*/

    public String get_historyNote() {
        return _historyNote;
    }

    /*public void set_historyNote(String _historyNote) {
        this._historyNote = _historyNote;
    }*/

    public double get_value() {
        return _value;
    }

    /*public void set_value(double _value) {
        this._value = _value;
    }*/

    public boolean is_minus() {
        return _minus;
    }

    /*public void set_minus(boolean _minus) {
        this._minus = _minus;
    }*/
}

