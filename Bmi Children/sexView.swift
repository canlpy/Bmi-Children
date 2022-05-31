//
//  buttonView.swift
//  Bmi Children
//
//  Created by Can on 16.05.2022.
//

import SwiftUI

struct sexView: View {
    
    @Binding var sex: String
    let passiveColor = Color.mint.opacity(0.3)
    let activeColor = Color.mint
    @State var maleColor = Color.mint
    @State var femaleColor = Color.mint.opacity(0.3)
    
    var body: some View {
        
        HStack {
            
            
            Spacer()
            
            Button {
                maleColor = activeColor
                femaleColor = passiveColor
                sex = "male"
                
            }
        label: { Image("boy")
                .resizable()
                .scaledToFit()
                .padding(10.0)
                .frame(width: 135.0, height: 150.0)
                .background(maleColor)
                .cornerRadius(15)
            
            
        }   // boy button
            
            Spacer()
                .frame(width: 30)
            
           
            Button {
                femaleColor = activeColor
                maleColor = passiveColor
                sex = "female"
            }
        label: { Image("girl")
                .resizable()
                .scaledToFit()
                .padding(10)
                .frame(width: 135.0, height: 150.0)
                .background(femaleColor)
                .cornerRadius(15)
            
        }  // female button
            
            Spacer()
        }
        
        
        
    }
    
    
    
    
    
    
    
    
    
}








