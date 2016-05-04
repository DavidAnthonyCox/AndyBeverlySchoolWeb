struct Car {
    var wheels = 0
    var color = ""
    var automatic = false
}

var truck = Car(wheels: 4, color: "Blue", automatic: true)

struct House {
    func open()
    {
        println("Open House")
    }
}

var myhouse = House()

myhouse.open()


let bobsCar = Car(wheels: 4, color: "Blue", automatic: true)

var mikesCar = bobsCar

mikesCar.color="Red"




