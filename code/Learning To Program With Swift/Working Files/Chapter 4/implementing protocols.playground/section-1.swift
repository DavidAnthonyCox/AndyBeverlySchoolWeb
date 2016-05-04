class Car : GameControllerProtocol
{
    var make : String
    init(make:String)
    {
        self.make = make
        self.speed = 0
    }
    
    var speed : Double
    
    func turnRight() {
        println("turning right")
    }
    
    func turnLeft() {
        println("turning left")
    }
    
    func brake() {
        println("braking")
    }
    
    func accelerate() {
        println("accelerating")
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

class GameEngine
{
    var vehicle : GameControllerProtocol
    
    init ( vehicle: GameControllerProtocol)
    {
        self.vehicle = vehicle
    }
    
    func run()
    {
        vehicle.accelerate()
        vehicle.turnLeft()
        vehicle.turnLeft()
        vehicle.brake()
    }
}

var game = GameEngine(vehicle: Car(make:"Speedy"))

game.run()

