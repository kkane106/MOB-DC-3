// MOB3DC Lesson 3 Demo 2

let name: String = "Kris Kane"

println(name)

// String interpolation
println("Hello \(name)")

func greetNewUser(#userName: String, #age: Int, #firstTime: Bool) -> String {
    if firstTime {
        return "Hello \(userName), I see that you are \(age), that's freaking awesome! Welcome to our site, please enjoy your first visit"
    } else {
        return "Welcome back \(userName), you are \(age)...you geezer."
    }
}

greetNewUser(userName: "Kris", age: 29, firstTime: true)
greetNewUser(userName: "Kris", age: 29, firstTime: false)
