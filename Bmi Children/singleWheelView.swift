//
//  singleWheelView.swift
//  Bmi Children
//
//  Created by Can on 7.06.2022.
//

import SwiftUI

struct singleWheelView: View {
    
    
    @Binding var firstDigit: Int
   
    
    
    var digitText: String = "cm"
   
    
    
    
    @State var heightCm = 10...200
    @State var wheelTitle: String

    
    
    
    
    
    
    
    var body: some View {
        
        
         
        
        
        VStack {
            
            Text(wheelTitle)
            
            HStack {
                Spacer()
                Text(digitText)
                Spacer()
                
            }
            
        
        HStack(spacing: 0) {
           
            Picker("", selection: $firstDigit) {
                ForEach(heightCm, id:\.self) {
                    Text("\($0)")
                }
                
            }
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

struct singleWheelView_Previews: PreviewProvider {
    static var previews: some View {
        
        
    
        
        let wheelTitle = "Height"
        
        singleWheelView(firstDigit: .constant(13), wheelTitle: wheelTitle)
    }
}
