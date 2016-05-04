class Rectangle
{
    var height = 0.0
    var width = 0.0
    
    lazy var mylazyvar = Lazy()
    
    var volume : Double {
        get {
            return height * width
        }
    }
}

class Lazy
{
    var name="Lazy"
    
    init()
    {
        println("Lazy initialized")
    }
}

var myrect = Rectangle()

myrect.height = 10
myrect.width = 20

myrect.volume

myrect.mylazyvar.name


