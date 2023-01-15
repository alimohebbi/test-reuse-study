package com.kvannli.simonkvannli.dailybudget;

public class ListModel {
    
    private  String name="";
    private  String Image="";
    private  String value="";
    private  String id="";
    private String interval ="";
    private String show = "";


    /*********** Set Methods ******************/
            
           public void setName(String name)
           {
               this.name = name;
           }

    public void setId(String id){
        this.id = id;
    }

    public void setInterval(String interval){
        this.interval=interval;
    }
            
           public void setImage(String Image)
           {
               this.Image = Image;
           }
            
           public void setValue(String value)
           {
               this.value = value;
           }

    public void setShow(String show) {
        this.show = show;
    }
            
           /*********** Get Methods ****************/
            
           public String getName()
           {
               return this.name;
           }
    public String getId(){
        return this.id;
    }
    public String getShow() {
        return show;
    }
            
           public String getImage()
           {
               return this.Image;
           }
        
           public String getValue()
           {
               return this.value;
           }

    public String getInterval(){
        return interval;
    }
     }