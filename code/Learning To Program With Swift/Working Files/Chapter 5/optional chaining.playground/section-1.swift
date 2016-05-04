class Car
{
    var name : String
    var make : String
    var driver : Driver?
    
    init(name: String, make: String)
    {
        self.name = name
        self.make = make
    }
}

class CarLot
{
    var cars = [Car]()
    
    var numberOfCars : Int { return cars.count }
    
    subscript(i: Int) -> Car {
        get { return cars[i] }
        set { cars[i] = newValue }
    }
    
}

class Driver
{
    var lastName : String
    
    init(lastName: String)
    {
        self.lastName = lastName
    }
}

var car1 = Car(name: "Buggy", make: "Folkswagon")
var car2 = Car(name: "Finto", make: "Pord")
var car3 = Car(name: "TimeMachine", make: "DocBrown")

car3.driver = Driver(lastName: "McSpeedy")

var lot = CarLot()

lot.cars.append(car1)
lot.cars.append(car2)
lot.cars.append(car3)

lot.numberOfCars

car1.driver?.lastName

car3.driver?.lastName

if let drivername = car3.driver?.lastName
{
        println("got \(drivername)")
}
else
{
    println("no driver")
}




