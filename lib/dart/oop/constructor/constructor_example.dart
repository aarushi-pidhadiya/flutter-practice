class Car {

  String brand;
  String color;

  Car(this.brand, this.color);
}

void main() {

  Car car1 = Car("BMW", "Black");

  Car car2 = Car("Audi", "White");

  print(car1.brand);
  print(car2.brand);
}