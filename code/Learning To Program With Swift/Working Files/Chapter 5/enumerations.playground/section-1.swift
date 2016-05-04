enum Element
{
    case Mountains, Sun, Water, Fire, Earth
}

var myvar = Element.Earth

switch myvar
{
    case .Mountains:
        println("Mountains")
    case .Sun:
        println("Sun")
    case .Water:
        println("Water")
    case .Fire:
        println("Fire")
    case .Earth:
        println("Earth")
}

