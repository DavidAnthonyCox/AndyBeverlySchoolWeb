func foo(var a:Int)
{
 a = 1
}

var x = 9

func plusEquals(inout a: Int, b : Int)
{
    a += b;
}

plusEquals(&x,3)

println(x)

