package Animals_nursery;

import java.util.ArrayList;

public class HomeAnimal extends Animal{


    public HomeAnimal(String name, String date) {
        super(name, date);
    }

    @Override
    public String toString() {
        return "Home Animal {" +
                "name = '" + super.getName() + '\'' +
                ", commands = " + super.getCommands() +
                ", dateOfBirth = '" + super.getDateOfBirth() + '\'' +
                '}';
    }
}