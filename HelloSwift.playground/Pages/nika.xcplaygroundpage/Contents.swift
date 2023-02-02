var age: Int = 21
var currentMounth = 10
var birthdayMounth: Int = 9
var name: String = "Нике"

var year: Int = 2022

if currentMounth < birthdayMounth && year == 2022 {
    print("\(name) \(age) года")
}
else if currentMounth >= birthdayMounth && year == 2022 {
    print("\(name) \(age + 1) года")
}
else if currentMounth < birthdayMounth && year == 2023 {
    print("\(name) \(age + 1) года")
}
else if currentMounth >= birthdayMounth && year == 2023 {
    print("\(name) \(age + 2) года")
}

