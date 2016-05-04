struct point
{
    var x = 0, y = 0
}

func + (left: point, right: point) -> point
{
    return point( x: left.x + right.x, y: left.y + right.y)
}

var a = point(x:1,y:3)
var b = point(x:2,y:3)

a + b

func += (inout left: point, right: point)
{
    left = left + right
}

a += b

a

func == (left: point, right: point) -> Bool
{
    return (left.x==left.x && left.y==right.y)
}

a == b

let c = point(x:3,y:6)

a == c

