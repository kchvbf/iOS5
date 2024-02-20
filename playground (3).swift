import Foundation

enum Month: Int {
    case January = 1, February, March, April, May, June, July, August, September, October, November, December
}
enum Season: String {
    case spring, autumn, winter, summer
}
enum Human: String {
    case head, leftArm, rightArm, leftLeg, rightLeg, body 
}
enum Prize: Int {
    case gold = 1, silver, bronze
}

enum Gender {
    case male, female
}
enum AgeCategory {
    case young, adult, old
}
enum Experience {
    case junior, middle, senior, lead
}
struct Employee {
    var name: String
    var gender: Gender
    var ageCategory: AgeCategory
    var experience: Experience
}
enum RainbowColor: Int {
    case red = 1,orange,yellow,green,blue,indigo,violet
}
enum Fruit: String {
    case apple, banana, cherry, grape, lemon, orange, peach, pear, pineapple, strawberry, watermelon
}


enum Color: String {
    case black, white, red, green, blue, yellow, pink, purple, brown, gray, orange
}
func printFruitColors() {
    let fruits = [Fruit.apple, Fruit.banana, Fruit.cherry, Fruit.grape, Fruit.lemon, Fruit.orange, Fruit.peach, Fruit.pear, Fruit.pineapple, Fruit.strawberry, Fruit.watermelon].shuffled()
    let colors = [Color.black, Color.white, Color.red, Color.green, Color.blue, Color.yellow, Color.pink, Color.purple, Color.brown, Color.gray, Color.orange].shuffled()
    for i in 0..<min(fruits.count, colors.count) {
        print("\(fruits[i].rawValue) - \(colors[i].rawValue)")
    }
}

printFruitColors()

enum Score: String {
    case A, B, C, F
}
func printNumericScore(score: Score) {
    switch score {
    case .A:
        print("5")
    case .B:
        print("4")
    case .C:
        print("3")
    case .F:
        print("2")
    }
}

printNumericScore(score: Score.A)
printNumericScore(score: Score.B)
printNumericScore(score: Score.C)
printNumericScore(score: Score.F)

enum Car: String {
    case Volkswagen, Audi, Porsche, BMW, Mercedes, Tesla, Toyota 
}
class Garage {
    var cars: [Car]
    init(cars: [Car]) {
        self.cars = cars
    }
    func printCars() {
        for car in cars {
            print("В моем гараже \(car.rawValue) ")
        }
    }
}
let garage = Garage(cars: [Car.Volkswagen])
garage.printCars()