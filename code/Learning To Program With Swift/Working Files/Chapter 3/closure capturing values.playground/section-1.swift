func getName(name: String) -> ()->String
{
    var returnFunction = { () -> String in return name }
    
    return returnFunction
}

var mike = getName("Mike")

mike()

