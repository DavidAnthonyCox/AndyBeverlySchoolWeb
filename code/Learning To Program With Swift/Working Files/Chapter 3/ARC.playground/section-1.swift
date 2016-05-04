class Order
{
    var product: Product?
    
}

class Product
{
    weak var order: Order?
    
}

var myOrder = Order()
var iPhone6 = Product()

myOrder.product = iPhone6
myOrder.product!.order = myOrder

