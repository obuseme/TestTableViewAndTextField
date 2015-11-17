# TestTableViewAndTextField

This project demonstrates an issue that I ran into when using a `UITextField` in a `UITableView`. Specifically, if a prototype cell is created that contains a `UITextField`, I'm having problems accessing the value of the `UITextField` from the `UIViewController`.  Essentially, what I want to do, is that at any point in the `UITableView`'s life, I want to be able to access the `UITextField`'s text property.  

My first thought was to use `cellForRowAtIndexPath` to retrieve the cell via an `NSIndexPath`, and then access the cell's `UITextField` property is problematic.  Doing this just results with the `UITextField's` `text` being returned as the initial value I defined in the storyboard.  What gives? 
