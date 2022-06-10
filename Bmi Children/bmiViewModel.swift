//
//  bmiViewModel.swift
//  Bmi Children
//
//  Created by Can on 7.06.2022.
//

import Foundation
final class bmiViewModel: ObservableObject  {
    
    @Published var sex = "boy"
    @Published var unit = "metric"
    @Published var weightFirstMetricDigit = 60
    @Published var weightSecondMetricDigit = 0
    @Published var heightFirstMetricDigit = 160
    @Published var heightSecondMetricDigit = 1
    @Published var weightFirstImperialDigit = 30
    @Published var weightSecondImperialDigit = 0
    @Published var heightFirstImperialDigit = 2
    @Published var heightSecondImperialDigit = 1
    
    let weightFirstDigitText: String = "kg"
    let weightSecondDigitText: String = "gr"
    let heightFirstDigitText: String = "ft"
    let heightSecondDigitText: String = "in"
    let weightLbsText: String = "lbs"
    let weightLbsSecondText = ""
    
    let heightTitle = "Height"
    let weightTitle = "Weight"
    
    @Published var result = ""
    @Published var age: Float = 6.0
    @Published var isShowingResultsView = false
    
    
    @Published var weightKg = 10...200
    @Published var weightGr = 0...9
    
    @Published var heightFt = 2...7
    @Published var heightInch = 0...11
    @Published var weightLbsFirst = 10...150
    @Published var weightLbsSecond = 0...9
    var doubleString = ""
    var converted: Double = 0.0
    
    
    
    
    
    func convertToDouble(first: Int, second: Int) -> Double {
        
        doubleString = "\(first)" + "." + "\(second)"
        converted = Double(doubleString) ?? 0
        return converted
        }
}


