//
//  ContentView.swift
//  Bmi Children
//
//  Created by Can on 6.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var sex = "boy"
    @State var unit = "kg"
    @State var weightFirstDigit = 60
    @State var weightSecondDigit = 1
    
    @State private var result = ""
    @State var age: Float = 6.0
    
    
    
    var body: some View {
        
        
        
        
        
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            
        
            VStack {
                VStack {
                Text("Bmi For Children")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                
                //heading
                
                Spacer()
                    .frame(height: 30)
                
                sexView(sex: $sex)
                 
                Spacer()
                    .frame(height: 20)
                    
                
                    units(unit: $unit)
                
                Spacer()
                    .frame(height: 20)
                
                    HStack {
                        
                        Spacer()
                        
                        wheelView(weightFirstDigit: $weightFirstDigit, weightSecondDigit: $weightSecondDigit)
                        
                        Spacer()
                            .frame(width: 30)
                        
                        wheelView(weightFirstDigit: $weightFirstDigit, weightSecondDigit: $weightSecondDigit)
                        
                        Spacer()
                        
                        
                        
                    } // hstack for weight & height
                    
                
                Spacer()
                    .frame(height: 20)
                
                    ageSlider(age: $age)
                
                Spacer()
                    .frame(height: 40)
                
                }
                
                Button("Calculate Bmi") {
                  
                    print("glkjdf")
                }
                
                .font(.title)
                .foregroundColor(.white)
                
                .frame(width: 300, height: 70)
                .background(.red)
                
                .cornerRadius(15.0)
                
                Text("can \(unit) & \(sex) & \(Int(age)) & \(weightFirstDigit)")
                
                
                
            } // vstack
            
            
            
            
      
        } // zstack
        
        
        
        
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
