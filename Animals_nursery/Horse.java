package Animals;

public class Horse extends PackAnimal{
    public Horse(String name, String date) {
        super(name, date);
    }

    @Override
    public String toString() {
        return "Horse {" +
                "name = '" + super.getName() + '\'' +
                ", commands = " + super.getCommands() +
                ", dateOfBirth = '" + super.getDateOfBirth() + '\'' +
                '}';
    }
}