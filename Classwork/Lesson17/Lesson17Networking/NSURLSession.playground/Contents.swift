import UIKit
import Foundation

let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
let session = NSURLSession(configuration: configuration)

let googleString = "http://www.google.com"
let googleURL = NSURL(string: googleString)
let googleRequest = NSURLRequest(URL: googleURL!)
let task = session.dataTaskWithRequest(
    googleRequest,
    completionHandler: { (data, response, error) -> Void in
        println("data: \(data)")
        println("data: \(response)")
        println("data: \(error)")
})

task.resume()
