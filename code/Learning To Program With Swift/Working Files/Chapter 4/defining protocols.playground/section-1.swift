class Car
{
    var make : String
    init(make:String)
    {
        self.make = make
    }
}

protocol GameControllerProtocol
{
    var speed : Double { get set }
    
    func turnRight()
    func turnLeft()
    func brake()
    func accelerate()

}