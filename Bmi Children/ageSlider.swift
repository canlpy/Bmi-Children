//
//  ageSlider.swift
//  Bmi Children
//
//  Created by Can on 21.05.2022.
//

import SwiftUI

struct ageSlider: View {
    
    @Binding var age: Float
    
    var body: some View {
        
        
        VStack {
        
            Slider(value: $age, in: 2...19)
            
        Text("Age: \(Int(age))")
        }
        .accentColor(.mint)
        .padding(10)
        .frame(width: 300.0, height: 100.0)
        .background(Color.mint.opacity(0.3))
        .cornerRadius(15)
        
    }
}

