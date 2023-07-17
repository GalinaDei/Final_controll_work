package Animals_nursery;

public class Hamster extends HomeAnimal{
    public Hamster(String name, String date) {
        super(name, date);
    }

    @Override
    public String toString() {
        return "Hamster {" +
                "name = '" + super.getName() + '\'' +
                ", commands = " + super.getCommands() +
                ", dateOfBirth = '" + super.getDateOfBirth() + '\'' +
                '}';
    }
}