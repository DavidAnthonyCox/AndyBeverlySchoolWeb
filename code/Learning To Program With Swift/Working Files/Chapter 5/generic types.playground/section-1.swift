class NameValuePair<T,U>
{
    var name: T
    var value: U
    
    init(name: T, value: U)
    {
        self.name = name
        self.value = value
    }
}

var n = NameValuePair(name: "FirstName", value: "Mike")

var n2 = NameValuePair(name: "Balance", value: 111.0)

