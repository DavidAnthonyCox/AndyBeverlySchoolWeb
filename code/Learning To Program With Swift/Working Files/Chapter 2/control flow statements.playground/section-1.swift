var i = 0

while i < 10
{
    i++
    if i==4
    {
        i++
        continue
    }
    
    if i==5
    {
        break
    }
}

i = 0
outerloop: while i < 10
{
    switch i
    {
    case 1...5:
        break outerloop
    case 6...9:
        continue outerloop
    default:
        println("default")
    }
    i++
}