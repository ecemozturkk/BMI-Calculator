import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    let colors = [#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), #colorLiteral(red: 0.6796058416, green: 0.08986679465, blue: 0.1107575968, alpha: 1)]
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You should eat more pies!", color: colors[0])
        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are healthy!", color: colors[1])
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: colors[2])
        }
    }
    
    func getBMIValue() -> String {
        let bmiPlain = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiPlain
    }
    
    func getAdvice () -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor () -> UIColor {
        return bmi?.color ?? UIColor.black
    }
    
}
