//
//  wheelView.swift
//  Bmi Children
//
//  Created by Can on 16.05.2022.
//

import SwiftUI

extension UIPickerView {   open override var intrinsicContentSize: CGSize {     return CGSize(width: UIView.noIntrinsicMetric , height: 150)   } }

struct wheelView: View {
    
    @StateObject private var viewModel = bmiViewModel()
    
    
    @Binding var firstDigit: Int
   
    @Binding var secondDigit: Int
    
    var firstDigitText: String 
    var secondDigitText: String
    
    @State var firstDigitArray =  1...10
    @State var secondDigitArray =  1...10
    
    
    
    
   // @State var weightKg = 10...200
  //  @State var weightGr = 1...9
    
  //  @State var heightFt = 2...7
  //  @State var heightInch = 0...11
    @State var wheelTitle: String

    
    
    
    
    
    
    
    var body: some View {
        
        
         
        
        
        VStack {
            
            Text(wheelTitle)
            
            HStack {
                Spacer()
                Text(firstDigitText)
                Spacer()
                Text(secondDigitText)
                Spacer()
            }
            
        
        HStack(spacing: 0) {
            Spacer()
            Picker("", selection: $firstDigit) {
                ForEach(firstDigitArray, id:\.self) {
                    Text("\($0)")
                }
                
            }
            .pickerStyle(WheelPickerStyle())
            
            .frame(width: 60.0, height: 80.0)
            .cornerRadius(10)
            
            
           
            
            Text(".")
                .frame(width: 3)
                
                
                
            
            Picker("", selection: $secondDigit) {
                ForEach(secondDigitArray, id:\.self) {
                    Text("\($0)")
                
                }
            }// picker
            .pickerStyle(WheelPickerStyle())
            .frame(width: 60.0, height: 80.0)
            .cornerRadius(10)
            
            
        }
            
            Spacer()
            
           
            
                
            
        
            
            
        
        
        }
        .padding(10)
        .frame(width: 135.0, height: 155.0)
        .background(Color.mint.opacity(0.3))
        .cornerRadius(15)
        
       
     
    
        
    
}

    
}



