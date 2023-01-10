package com.kvannli.simonkvannli.dailybudget;

/**
 * Created by simonkvannli on 10/12/15.
 */
public class Expenses {
    private int _id;
    private String _expenseName;
    private double _value;
    private String _interval;

    public Expenses(){}

    public Expenses(String expenseName, double value, String interval){
        this._expenseName = expenseName;
        this._value = value;
        this._interval = interval;
    }

    public int get_id() {
        return _id;
    }

    public void set_id(int _id) {
        this._id = _id;
    }

    public String get_expenseName() {
        return _expenseName;
    }

    public void set_expenseName(String _incomeName) {
        this._expenseName = _expenseName;
    }

    public double get_value() {
        return _value;
    }

    public void set_value(double _value) {
        this._value = _value;
    }
    public void set_interval(String interval){
        this._interval = interval;
    }
    public String get_interval(){
        return _interval;
    }
}

