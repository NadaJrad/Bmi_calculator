
import Foundation
struct CalculatorBrain {
    
    var bmi: Float?
    
    func getBMIValue() -> (String) {
        let bmiTo1DeciamlPlace = String(format: "%.1f", bmi ?? 0.0)
        return bmiTo1DeciamlPlace
        
    }

    mutating func calculateBMI(height: Float, weight:Float){
         bmi = weight / (height * height)
        
    }
}
