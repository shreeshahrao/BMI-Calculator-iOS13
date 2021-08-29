
import UIKit

struct CalculateBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float , weight: Float){
         let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Normal Weight", color: #colorLiteral(red: 0, green: 0.9803921569, blue: 0.5294117647, alpha: 1))
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Over Weight", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        
        let result = String(format: "%.1f", bmi?.value ?? 0.0)
            return result
        
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
        
    }
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
        
    }

