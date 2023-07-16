public class Dog extends HomeAnimal {
    private String type;
    private String commands;
    public Dog(int id, String name, String dateOfBirth) {
        super(id, name, dateOfBirth);
        this.type = dog;
    }
    public Dog(int id, String name, String dateOfBirth, String commands) {
        super(id, name, dateOfBirth);
        this.type = dog;
    }
    public String getCommans() { return  commands;}
    public String setCommands() {
        return commands;
    }
}