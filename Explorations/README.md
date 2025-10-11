-What is the DRY principle?
    The dry principle is when you repeat code. 

-You will often hear that functions should be short and do one thing. Does that mean each function should always contain one statement? Why or why not?
    No, making functions short doesnt mean a function should only contain one statement. It is difficult to say definitively how many statements a function of unknown utility will need.

-Imagine that you extract a unit of work into a well-named function, but that function is only called in one place. Your colleague argues, "Why do that? Now when I want to follow the code I have to jump from the call site to the function definition and then back, it breaks up my flow of reading. The function isn't being reused, so just replace the call with the actual statements so it's all right there." The argument has merit. But explain one or two reasons why having the function has its benefits.
    While reading may be enhanced, there could be a reason the function would need to reused in the future and modifying it will be difficult, if it is not an isolated function. Also, while the flow may be easier to read, allowing statements to exist outside of a function will cause other readability issues; such as knowing when one program utility stops and another begins. 