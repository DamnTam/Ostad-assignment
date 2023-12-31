class Car {
  String brand;
  String model;
  int year;
  double milesDriven=0;
  static int totalCars = 0;
  Car(this.brand, this.model, this.year) {
      totalCars++;
   }
   void drive(double miles){
     milesDriven+=miles;
   }
   double totalMilesDriven(){
    return milesDriven;
   }
   String brandMethod(){
    return this.brand;
   }
  String modelMethod(){
    return this.model;
  }
  int yearMethod(){
    return this.year;
  }
  int carAge(){
    return DateTime.now().year-this.year;
   }
}

void main() {
  Car car1 = Car('Toyota', 'Camry', 2020);
  car1.drive(10000);
  Car car2 = Car('Honda', 'Civic', 2018);
  car2.drive(8000);
  Car car3 = Car('Ford', 'F-150', 2015);
  car3.drive(15000);

  print('Car 1: ${car1.brandMethod()} ${car1.modelMethod()} ${car1.yearMethod()} miles: ${car1.totalMilesDriven()} Age: ${car1.carAge()}');
  print('Car 2: ${car2.brandMethod()} ${car2.modelMethod()} ${car2.yearMethod()} miles: ${car2.totalMilesDriven()} Age: ${car2.carAge()}');
  print('Car 3: ${car3.brandMethod()} ${car3.modelMethod()} ${car3.yearMethod()} miles: ${car3.totalMilesDriven()} Age: ${car3.carAge()}');
  print('Total number of cars created: ${Car.totalCars}');
}



