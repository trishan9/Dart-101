void main() {
  Car car1 = Car("BMW", 121212.99);
  Car car2 = Car("Tesla", 99999.99);

  print(car1.format());
  print(car2.format());

  PetrolCar petrolCar1 = PetrolCar(12.99, "Toyota", 1234.99);
  print(petrolCar1);
  print(petrolCar1.format());
  print(PetrolCar.fuelType);

  ElectricCar electricCar1 = ElectricCar(12.99, "Tesla", 1222.99);
  print(electricCar1.format());
  print(electricCar1.formats());
  print(ElectricCar.fuelType);
}

abstract class Vehicle {
  formats();
}

class Car implements Vehicle {
  String make;
  double price;
  late String _secret; // Private

  Car(this.make, this.price); // constructor

  String format() {
    return "$make === $price";
  }

  @override
  formats() {
    return "Formats!";
  }
}

class PetrolCar extends Car {
  static String fuelType = "Petrol";
  double mileage;
  PetrolCar(this.mileage, String make, double price) : super(make, price);

  @override
  String format() {
    return "$make === $price === $fuelType === $mileage";
  }

  @override
  String toString() {
    return "Overrided!";
  }
}

class ElectricCar extends Car {
  static String fuelType = "Electric";
  double mileage;
  ElectricCar(this.mileage, String make, double price) : super(make, price);

  @override
  String format() {
    return "$make === $price === $fuelType === $mileage";
  }
}
