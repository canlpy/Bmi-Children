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
    @Published var weightFirstDigit = 60
    @Published var weightSecondDigit = 1
    @Published var heightFirstDigit = 100
    @Published var heightSecondDigit = 1
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
    
}
