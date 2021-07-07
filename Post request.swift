# swift4_code
coding method to swift language
let configuration = NSURLSessionConfiguration .defaultSessionConfiguration()
    let session = NSURLSession(configuration: configuration)

    let params = ["username":bindings .objectForKey("username"), "provider":"walkingcoin", "securityQuestion":securityQuestionField.text!, "securityAnswer":securityAnswerField.text!] as Dictionary<String, AnyObject>

    let urlString = NSString(format: “your URL”);
    print("url string is \(urlString)")
    let request : NSMutableURLRequest = NSMutableURLRequest()
    request.URL = NSURL(string: NSString(format: "%@", urlString)as String)
    request.HTTPMethod = "POST"
    request.timeoutInterval = 30
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    request.addValue("application/json", forHTTPHeaderField: "Accept")      
    request.HTTPBody  = try! NSJSONSerialization.dataWithJSONObject(params, options: [])

    let dataTask = session.dataTaskWithRequest(request)
        {
            (let data: NSData?, let response: NSURLResponse?, let error: NSError?) -> Void in
            // 1: Check HTTP Response for successful GET request
            guard let httpResponse = response as? NSHTTPURLResponse, receivedData = data
                else {
                    print("error: not a valid http response")
                    return
            }

            switch (httpResponse.statusCode)
            {
            case 200:

                let response = NSString (data: receivedData, encoding: NSUTF8StringEncoding)


                if response == "SUCCESS"
                {

                }
