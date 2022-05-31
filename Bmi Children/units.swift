//
//  units.swift
//  Bmi Children
//
//  Created by Can on 16.05.2022.
//

import SwiftUI




struct units: View {
    
    
    
    let passiveColor = Color.mint.opacity(0.3)
    let activeColor = Color.mint
    @Binding var unit: String
    
    @State var kgColor = Color.mint
    @State var inchColor = Color.mint.opacity(0.3)
    
    
    

    
   
    
   
    
   
    
   
   
    
    
    var body: some View {
        
        
        
      HStack {
            Spacer()
            
            Button("Kg & Cm") {
                kgColor = activeColor
                inchColor = passiveColor
                unit = "metric"
                
            }
          
                    .foregroundColor(.black)
                    .padding(10.0)
                   .frame(width: 135.0, height: 50.0)
                .background(kgColor)
                .cornerRadius(15)
                       
                                
                                
                     
            
                    
                                       
            
            
            Spacer()
                .frame(width: 30)
            
        Button("Lbs & Inch") {
            inchColor = activeColor
            kgColor = passiveColor
                unit = "imperial"
            }
            .foregroundColor(.black)
            .padding(10.0)
            .frame(width: 135.0, height: 50.0)
            .background(inchColor)
            .cornerRadius(15)
            
           Spacer()
    
        }
    
    }
    }



