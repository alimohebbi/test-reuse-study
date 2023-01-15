package com.kvannli.simonkvannli.dailybudget;

/**
 * Created by simonkvannli on 10/12/15.
 */
public class Incomes {
    private int _id;
    private String _incomeName;
    private double _value;
    private String _interval;

    public Incomes(){}

    public Incomes(String incomeName, double value, String interval){
        this._incomeName = incomeName;
        this._value = value;
        this._interval = interval;
    }

    public int get_id() {
        return _id;
    }

    public void set_id(int _id) {
        this._id = _id;
    }

    public String get_incomeName() {
        return _incomeName;
    }

    public void set_incomeName(String _incomeName) {
        this._incomeName = _incomeName;
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

