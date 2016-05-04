enum Element
{
    case Mountains(Int), Sun(Int), Water(Int), Fire(String,Double), Earth(Int)
}

class Spell
{
    var cost : Element
    
    init()
    {
        cost = .Sun(0)
    }
}

var creature = Spell()

creature.cost = .Mountains(2)
creature.cost = .Mountains(4)
creature.cost = .Fire("Dragon Ears", 5.0)


switch creature.cost
    {
case let .Mountains( qty ):
    println("Mountains needed: \(qty)")
    
case let .Fire( str, val ):
    println("Fire requires: \(val) cups of \(str)")
    
default:
    println("No match")
}
