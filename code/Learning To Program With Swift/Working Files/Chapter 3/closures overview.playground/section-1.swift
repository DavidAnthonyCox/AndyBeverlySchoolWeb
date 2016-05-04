func doMath ( a: Int, b: Int, calculate: (x: Int, y: Int) -> Int) -> Int
{
    return calculate(x:a,y:b)
}

doMath(2,2, { (a: Int, b:Int) -> Int in return a+b });

doMath(5,5, { a,b -> Int in return a*b });

doMath(10,10, { $0 * $1 })





