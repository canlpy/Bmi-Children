//
//  wheelView.swift
//  Bmi Children
//
//  Created by Can on 16.05.2022.
//

import SwiftUI

extension UIPickerView {   open override var intrinsicContentSize: CGSize {     return CGSize(width: UIView.noIntrinsicMetric , height: 150)   } }

struct wheelView: View {
    
    
    
    @Binding var weightFirstDigit: Int
   
    @Binding var weightSecondDigit: Int
    
    
    
    @State var weightKg = 10...200
    @State var weightGr = 1...9
    
    @State var weightFt = 2...7
    @State var weightInch = 0...11

    
    
    
    
    
    
    
    var body: some View {
        
        
        
        
        
        VStack {
            
            Text("Weight")
        
        HStack(spacing: 0) {
            Spacer()
            Picker("", selection: $weightFirstDigit) {
                ForEach(weightKg, id:\.self) {
                    Text("\($0)")
                }
                
            }
            .pickerStyle(WheelPickerStyle())
            
            .frame(width: 60.0, height: 80.0)
            .cornerRadius(10)
            
            
           
            
            Text(".")
                .frame(width: 3)
                
                
                
            
            Picker("", selection: $weightSecondDigit) {
                ForEach(weightGr, id:\.self) {
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
        .frame(width: 135.0, height: 135.0)
        .background(Color.mint.opacity(0.3))
        .cornerRadius(15)
        
       
     
    
        
    
}

    
}


