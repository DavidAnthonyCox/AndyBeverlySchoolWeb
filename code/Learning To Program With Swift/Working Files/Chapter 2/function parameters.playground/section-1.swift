func add(num1: Int, num2: Int) -> Int
{
    return num1 + num2
}

add(2,2)

func addMany(numbers: Int...) ->Int
{
    var total = 0
    
    for number in numbers
    {
        total += number
    }
    
    return total
}

addMany(1,2)

addMany(1,2,3,4,5,6)

func divide( dividend x: Float, byDivisor y: Float ) -> Float
{
        return x / y
}

divide(dividend: 4, byDivisor: 2)

