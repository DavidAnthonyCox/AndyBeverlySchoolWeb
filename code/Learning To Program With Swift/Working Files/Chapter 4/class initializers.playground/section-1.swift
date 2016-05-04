class Rectangle
{
    var x,y: Int
    
    convenience init()
    {
        self.init(x:2, y:4)
    }
    
    init(x: Int, y: Int)
    {
        self.x = x
        self.y = y
    }
    
    init(height: Int, width: Int)
    {
        self.x = height
        self.y = width
    }
}

var myRect = Rectangle(x:5,y:10)

myRect = Rectangle(height:2,width:4)




