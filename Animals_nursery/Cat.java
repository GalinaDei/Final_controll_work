public class Cat extends HomeAnimal {
    private String type;
    private String commands;
    public Cat(int id, String name, String dateOfBirth) {
        super(id, name, dateOfBirth);
        this.type = cat;
    }
    public Cat(int id, String name, String dateOfBirth, String commands) {
        super(id, name, dateOfBirth);
        this.type = cat;
    }
    public String getCommans() { return  commands;}
    public String setCommands() {
        return commands;
    }
}