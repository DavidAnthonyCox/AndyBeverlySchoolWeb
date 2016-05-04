func logit<T: Printable>(message: String, object: T)
{
    println("Log: \(message):\(object.description)")
}

//logit("Error", 34)

class someObj : Printable
{
    var str="Hello world"
    var i = 42
    
    var description: String
    {
        return "\(str) has value \(i)"
    }
}

var s = someObj()

logit("Error in object", s)






