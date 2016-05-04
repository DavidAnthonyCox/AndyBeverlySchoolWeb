var myobj : AnyObject

var myany : Any

class Car
{
    var make : String
    init(make:String)
    {
        self.make = make
    }
}

let cars : [AnyObject] = [
    Car(make:"Tord"),
    Car(make:"Foyota"),
    Car(make:"Cat")
]

for car in cars
{
    if let c = car as? Car
    {
        println(c.make)
    }
}

