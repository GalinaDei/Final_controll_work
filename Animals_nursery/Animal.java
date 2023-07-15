public abstract class Animal {
    int id;
    String name;
    Strung type;
    
    protected Animal(int id, String name, String type) {
        this.id = id;
        this.name = name;
        this.type = type;
    }   
    public int setId() {

    }
    public String toString () {
        return("id: "+id+"; name: "+name+"; type: "+type+"." );
    }
}