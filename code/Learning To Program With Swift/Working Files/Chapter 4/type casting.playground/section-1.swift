class Vehicle
{
    var make : String
    var model : String
    
    init(make: String, model: String)
    {
        self.make = make
        self.model = model
    }
}

class Sedan : Vehicle
{
    var doors = 4
}

class Truck : Vehicle
{
    var has4x4 = true
}

let carsInLot = [
    Sedan(make:"Tord",model:"Frius"),
    Sedan(make:"Tord",model:"Horse"),
    Truck(make:"Choyota",model:"Silver")
]

for item in carsInLot
{
    if let s = item as? Sedan
    {
        s.doors
        println("Sedan")
    }
    else if let t = item as? Truck
    {
        t.has4x4
        println("Truck")
    }
    
}
