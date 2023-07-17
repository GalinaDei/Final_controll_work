package Animals_nursery;

public class Camel extends PackAnimal{
    public Camel(String name, String date) {
        super(name, date);
    }

    @Override
    public String toString() {
        return "Camel {" +
                "name = '" + super.getName() + '\'' +
                ", commands = " + super.getCommands() +
                ", dateOfBirth = '" + super.getDateOfBirth() + '\'' +
                '}';
    }
}