func takesAClosure( () -> String )
{
    // does something
}

takesAClosure({ return "ABC" })

takesAClosure()
{
    // closure body goes here
    
    
    
    
    return "123"
}