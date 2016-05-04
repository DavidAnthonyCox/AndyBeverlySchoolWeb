var dict = [1:"One",2:"Two",3:"Three"]

dict[2]

dict.count

dict.isEmpty

dict.updateValue("Four", forKey: 4)

dict

dict.updateValue("2", forKey: 2)

dict

dict.removeValueForKey(3)

dict

for item in dict
{
    println(item.0)
    println(item.1)
}


