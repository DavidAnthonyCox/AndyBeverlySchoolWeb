class Vehicle
{
    var gasInTank = 0
    
    func accelerate()
    {
        
    }
    
    func brake()
    {
    
    }
    
    final func dontOverride()
    {
        
    }
    
    var currentSpeed = 0
}

class Sedan : Vehicle
{
    override func accelerate() {
        currentSpeed += 5
    }
    
    override init()
    {
        super.init()
    }
}