func getTuple() -> (x: Int, y:Int, z:Int)
{
    return (1,2,3)
}

var tuple = getTuple()

tuple.x

tuple.y

tuple.z

func getTupleOptional() -> (a:Int, b:Int)?
{
    return nil;
}

func getTupleOptionalVariable() -> (a: Int?, b:Int)
{
    return (nil, 3)
}