enum numbers : Int
{
    case one = 1, two, three, four
}

numbers.one.toRaw()

var x = numbers.fromRaw(7)

enum Values : String
{
    case Boat = "Boat"
    case Plane = "Plane"
    case Car = "Car"
}

Values.Boat.toRaw()

