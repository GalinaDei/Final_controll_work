// Задание 13. Создать класс с Инкапсуляцией методов и наследованием по диаграмме.

public abstract class Animal {
    private int id;
    private String name;
    private Strung dateOfBirth;
    
    public Animal(int id, String name, String dateOfBirth) {
        this.id = id;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
    }   
    public int getId() {
        return id;
    }

    public int setId(int id) {
        return this.id = id;
    }

    public String getName() {
        return name;
    }

    public String setName(String name) {
        return this.name = name;
    }

    public String getBirthdate() {
        return dateOfBirth;
    }

    public String setBirthdate(String dateOfBirth) {
        return this.dateOfBirth = dateOfBirth;
    }
    public String toString () {
        return("id: "+id+"; name: "+name+"; type: "+type+"." );
    }
}