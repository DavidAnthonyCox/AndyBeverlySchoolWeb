switch (1000)
{
case 0:
    println("Zero")
case 1000:
    println("One Thousand")
default:
    println("Default")
}

switch ( 400 )
{
case 0...1000:
    println("Between 0 and 1000 inclusively")
    fallthrough
case 200...500:
    println("Between 200 and 500 inclusively")
default:
    println("Default")
}

var tuple = (1,2,3)

switch ( tuple )
{
case (0,0,0):
    println("Three zeros")
case (1,2,3):
    println("We have a match")
default:
    println("Default")
}

var x = "Joe"

switch ( x )
{
    case "Mike":
     println("Yes")
    case "Joe":
        println("No")
    default:
        println("Default")
}

switch ( 15 )
{
case 1,2,15:
    println("one two or five")
default:
    println("Default")
}
