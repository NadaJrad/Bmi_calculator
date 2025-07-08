
import Foundation
import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> (String) {
        let bmiTo1DeciamlPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DeciamlPlace
        
    }

    mutating func calculateBMI(height: Float, weight:Float){
       let bmiValue = weight / (height * height)
        
        
        if bmiValue < 18.5 {
            
            bmi =  BMI(value: bmiValue, advice: "Eat more pies!", color:#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.5 {
            bmi =  BMI(value: bmiValue, advice: "Fir as a fiddle! ", color:#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
        }else {
            bmi =  BMI(value: bmiValue, advice: "Eat less pies!", color:#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
//
        
    }
    
    func getAdvice() -> (String) {
        return bmi?.advice ?? "No Advice"
    }
    func getColor() -> (UIColor)  {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
