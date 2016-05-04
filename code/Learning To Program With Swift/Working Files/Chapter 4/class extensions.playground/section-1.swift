extension String
{
    func reverse() -> String
    {
        var reversed = ""
        
        for c in self
        {
            reversed = String(c) + reversed
        }
        
        return reversed
    }
}

"abcdefg".reverse()

