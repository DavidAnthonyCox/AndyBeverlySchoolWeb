class Calculator
{
    var total = 0
    
    func add(x: Int)
    {
        total += x
    }
    
    func divide(x: Double, by: Double) -> Double
    {
        return x / by;
    }
}

var calc = Calculator()

calc.divide(4.0,by: 2.0)

