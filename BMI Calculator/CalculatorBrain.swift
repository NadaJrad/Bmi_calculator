
import Foundation
struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> (String) {
        let bmiTo1DeciamlPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DeciamlPlace
        
    }

    mutating func calculateBMI(height: Float, weight:Float){
       let bmiValue = weight / (height * height)
        
        
        if bmiValue < 18.5 {
            
            print("under weight")
        } else if bmiValue < 24.5 {
            print ("normal weight")
        }else {
            print ("over weight")
        }
//       bmi =  BMI(value: <#T##Float#>, advice: <#T##String#>, color: <#T##UIColor#>)
        
    }
}
