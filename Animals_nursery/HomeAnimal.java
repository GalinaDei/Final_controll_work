public class HomeAnimal extends Animal {
    private int age;
    boolean yang;
    public HomeAnimal(int id, String name, String dateOfBirth) {
        super(id, name, dateOfBirth);
    }
    public int getAge() {
        return age;
    }
    public int setAge () {
        return age;
    }

    Strig IsYang() {
        if(yang == true) {return "Animal is yang.";}
        else {return "Animal is not yang.";}
    }
    boolean setYang() {
        if (this.age < 3 && this.age > 0) { return yang = true;
        } else { return yang = false; }
    }
}