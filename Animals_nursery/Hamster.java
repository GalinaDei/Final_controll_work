public class Hamster extends HomeAnimal {
    private String type;
    private String commands;
    public Hamster(int id, String name, String dateOfBirth) {
        super(id, name, dateOfBirth);
        this.type = hamster;
    }
    public Hamster(int id, String name, String dateOfBirth, String commands) {
        super(id, name, dateOfBirth);
        this.type = hamster;
    }
    public String getCommans() { return  commands;}
    public String setCommands() {
        return commands;
    }
}