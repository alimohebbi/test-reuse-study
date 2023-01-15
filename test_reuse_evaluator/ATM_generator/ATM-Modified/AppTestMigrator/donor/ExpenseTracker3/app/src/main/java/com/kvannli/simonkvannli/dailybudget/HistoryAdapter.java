package com.kvannli.simonkvannli.dailybudget;

/**
 * Created by simonkvannli on 07/10/16.
 */

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.TreeSet;
import android.content.Context;
import android.graphics.Color;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import static java.lang.Math.max;

class HistoryAdapter extends BaseAdapter {

    private static final int TYPE_ITEM = 0;
    private static final int TYPE_SEPARATOR = 1;
    private boolean only30 = false;
    private boolean nowDone = false;
    Context activity;

    private ArrayList<HistoryObject> mData = new ArrayList<HistoryObject>();
    private TreeSet<Integer> sectionHeader = new TreeSet<Integer>();

    private LayoutInflater mInflater;

    public HistoryAdapter(Context context, boolean only30) {
        this.activity = context;
        this.only30 = only30;
        mInflater = (LayoutInflater) context
                .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
    }

    public void addItem(final HistoryObject item) {
        mData.add(item);
        notifyDataSetChanged();
    }

    public void addSectionHeaderItem(final HistoryObject item) {
        mData.add(item);
        sectionHeader.add(mData.size() - 1);
        notifyDataSetChanged();
    }

    @Override
    public int getItemViewType(int position) {
        return sectionHeader.contains(position) ? TYPE_SEPARATOR : TYPE_ITEM;
    }

    @Override
    public int getViewTypeCount() {
        return 2;
    }

    @Override
    public int getCount() {
        return mData.size();
    }

    @Override
    public HistoryObject getItem(int position) {
        return mData.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }



    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder holder = null;
        int rowType = getItemViewType(position);

        int lastObjectToReplace = max(mData.size() - 1, 30); //The object that will be replaced with "Show all"

        boolean nowOnHeader = true;

        holder = new ViewHolder();

        //Set properties of the Show All item
        if(position==lastObjectToReplace && only30){
            convertView = mInflater.inflate(R.layout.show_all_listview, null);
            holder.textView = (TextView) convertView.findViewById(R.id.label);
            convertView.setOnClickListener(new OnItemClickListener( position ,-1));

        }else {
            switch (rowType) {
                case TYPE_ITEM:
                    nowOnHeader = false;
                    convertView = mInflater.inflate(R.layout.history_listview, null);
                    holder.textView = (TextView) convertView.findViewById(R.id.label);
                    holder.dateTextView = (TextView) convertView.findViewById(R.id.datetime);
                    holder.imageView = (ImageView) convertView.findViewById(R.id.imageView2);
                    break;
                case TYPE_SEPARATOR:
                    //Once this position is used as header, remove it so it becomes a normal object too
                    //sectionHeader.remove(position);

                    nowOnHeader = true;
                    convertView = mInflater.inflate(R.layout.history_listview_header, null);
                    holder.textView = (TextView) convertView.findViewById(R.id.label2);
                    break;
            }
        }
            convertView.setTag(holder);

        if(!(position==lastObjectToReplace && only30)) {
            if (!nowOnHeader) {
                holder.textView.setText("NOTE: " + mData.get(position).get_historyNote() + "\nAMOUNT: " + mData.get(position).get_value());
                holder.dateTextView.setText(mData.get(position).get_time());
                if (mData.get(position).is_minus()) {
                    holder.textView.setTextColor(Color.parseColor("#FFE7E7E7"));
                    holder.dateTextView.setTextColor(Color.parseColor("#FFE7E7E7"));
                    holder.imageView.setImageResource(R.drawable.minusbutton);


                } else {
                    holder.textView.setTextColor(Color.parseColor("#FFE7E7E7"));
                    holder.dateTextView.setTextColor(Color.parseColor("#FFE7E7E7"));
                    holder.imageView.setImageResource(R.drawable.plusbutton);

                }
                convertView.setOnClickListener(new OnItemClickListener( position, mData.get(position).get_id() ));
            } else { //White middle item just showing date
                holder.textView.setText(correct_date_format(mData.get(position).get_date()));
            }
        }

        return convertView;
    }

    public static class ViewHolder {
        public TextView textView;
        public TextView dateTextView;
        public ImageView imageView;
    }

    public String correct_date_format(String inputString){
        String returnString = "";
        try{
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            Date newDate = format.parse(inputString);

            format = new SimpleDateFormat("dd. MMM yyyy");
            returnString = format.format(newDate);

        }catch(Exception e){
            System.out.println("HistoryAdapter correct_date_format error:");
            System.out.println(e);
            returnString = inputString;
        }
        return returnString;


    }




    /********* Called when Item click in ListView ************/
    private class OnItemClickListener  implements View.OnClickListener {
        private int mPosition;
        private int mId;

        OnItemClickListener(int position, int id){
            mPosition = position;
            mId = id;
        }

        @Override
        public void onClick(View arg0) {
            HistoryActivity act = (HistoryActivity) activity;
            if(mId==-1){
                System.out.println("SHOW ALL");
                act.fillListViewAll();
            }else{
                act.historyPressed(mId);
            }
        }
    }

}
