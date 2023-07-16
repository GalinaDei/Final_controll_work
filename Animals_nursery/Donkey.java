public class Donkey extends PackAnimal {
    private String type;
    private String commands;
    public Donkey(int id, String name, String dateOfBirth) {
        super(id, name, dateOfBirth);
        this.type = donkey;
    }
    public Donkey(int id, String name, String dateOfBirth, String commands) {
        super(id, name, dateOfBirth);
        this.type = donkey;
    }
    public String getCommans() { return  commands;}
    public String setCommands() {
        return commands;
    }
}