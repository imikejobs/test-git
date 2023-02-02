let name: String = "Nika"
let age : Int = 21
print(name + " " +  String(age))

var d = 3.4           // тип Double
var f: Float = 1.2           // присвоить Float и конкатенировать
//d = Double(f)
print(d + Double(f))// ! Ошибка - разные типы


var str2: String = String("abc")
print(str2)



let x1 = 5
let x2 = 6
let str = "\(x1) + \(x2) = \(x1 + x2)"
print(str)

var g = 10
var h = 10
var l = g == h
print(l)

let props: (Int, String) = (22, "age")
var userInfo: (Bool, Int, String) = (true, 34, "Tom")
userInfo.2 = "Mike"
print(userInfo.2)


let personInfo1 = ("Mike", 33)
switch personInfo1 {
        case ("Bob", 33):
        print("Имя: Bob, возраст: 33")
    case (_, 22):
        print("Имя: \(personInfo1.0) и возраст: 22")
        //fallthrough
    case ("Tom", _):
        print("Имя: Tom и возраст: \(personInfo1.1)")
        //fallthrough
    case ("Mike", 1...30):
        print("Имя: Tom и возраст от 1 до 30")
    case let (name, age):
        print("Имя: \(name) и возраст: \(age)")
    //default:
        //print("Информация не распознана")

}


let someString = "hello"
let someNumber = Int(someString) //Int?
var number1: Int? = 12 // optional
print(number1!) // извлечение из optional

var z: Int? = 12
var x: Int = 10
var v = z! + x // опциональный z работает с обычным int


var str1: String = "123" // проверить возврат значения Optional
var b1: Int = 10
if var a1 = Int(str1){
    a1+=b1
    print(a1)
}
else{
    print(b1)
}

let q = Int("234") // работает еслм "q" не nil
let w = q ?? 10
print(w)    // 234



var i = -1
repeat {
     
    print(i)
    i-=1
} while i > 0

func sum (_ x: Int, _ y: Int) -> Int{
    return x + y
}
let г = String(sum(4,5))
let k = String(sum(10, 23))
print(k + String(i))

func measureTax(_ salary: Double) -> Double?{
     
    if(salary > 1000){
         
        return salary * 0.13
    }
    return nil
}
 
if let tax = measureTax(11000){     // 1430
     
    print(tax)
}
 
if let tax = measureTax(110){     // nil
     
    print(tax)
}


func swap(a: inout Int, b: inout Int){
     
    let temp = a
    a = b
    b = temp
}
 
var num1 = 10
var num2 = 13
 
swap(&num1, &num2)
 
print(num1) // 13
print(num2) //  10



func add(_ x3: Int, _ y3: Int) -> Int {return x3 + y3}
func subtract(_ x3: Int, _ y3: Int) -> Int {return x3 - y3}
func multiply(_ x3: Int, _ y3: Int) -> Int {return x3 * y3}
 
func select (_ n: Int) -> (Int, Int) -> Int{
     
    switch n {
    case 2:
        return subtract
    case 3:
        return multiply
    default:
        return add
    }
}
 
let x3 = 12, y3 = 8
 
var someFunc = select(1)    // add
print(someFunc(x3, y3))       // 20
 
someFunc = select(2)        // subtract
print(someFunc(x3, y3))       // 4
 
someFunc = select(3)        // multiply
print(someFunc(x3, y3))       // 96


func compare(_ r1: Double, _ r2: Double){
     
    func square(_ r: Double) -> Double{ return r * r * 3.14}
     
    let s1 = square(r1)
    let s2 = square(r2)
     
    print("разница площадей:", (s1 - s2))
}
 
compare(16.0, 15.0)


func operation(_ a4: Int, _ b4: Int, _ action: (Int, Int) -> Int) -> Int{ //Замыкания как аргументы функций
     
    return action(a4, b4)
}
 
let x4 = 10
let y4 = 12
 
let result1 = operation(x4, y4, {(a4: Int, b4: Int) -> Int in
     
    return a4 + b4
})
 
print(result1)    // 22
 
var result2 = operation(x4, y4, {(a4: Int, b4: Int) -> Int in return a4 - b4})
 
print(result2)    // -2


class Mike {
    var name="Mike"
    var age = 23
    
    //init(name: String, age: Int){
     
    //self.age = age
    //self.name = name
   // }
    
    func move(){
        print("\(name) передвигается")
}
    func getUserInfo(){
        print("Имя: \(self.name); возраст: \(self.age)")
    }
}
var mike = Mike()
print(mike.name)
mike.move()
mike.getUserInfo()



struct User {
    var name: String = "Tom"
    var age: Int = 18
     
    func getInfo() -> String{
     
        return "Имя: \( name). Возраст: \(age)"
    }
}
var tom: User = User()
print(tom.getInfo())    // Имя: Tom. Возраст: 18
 
var bob  = User(name: "Bob", age: 23)
print(bob.getInfo())


enum Season{
 
    case Winter, Spring, Summer, Autumn
    //case Winter = "Зима"
    //case Spring
    //case Summer
    //case Autumn
}
 
let currentSeason = Season.Spring
 
switch(currentSeason){
 
case .Winter:
    print("Зима")
case .Spring:
    print("Весна")
case .Summer:
    print("Лето")
case .Autumn:
    print("Осень")
}

//var nowSeason = Season.Winter
//print(nowSeason)
//print(nowSeason.rawValue)


enum DayOfWeek: Int{
     
    case Monday=1, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}
 
var currentDay = DayOfWeek(rawValue: 7) // Optional(DayOfWeek.Sunday)
print(currentDay!)



