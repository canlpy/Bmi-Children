//
//  resultView.swift
//  Bmi Children
//
//  Created by Can on 31.05.2022.
//

import SwiftUI
import GaugeKit

struct resultView: View {
    
    
    
    @StateObject private var viewModel = bmiViewModel()
    
    @State var sex = ""
    @State var result: Double = 1.1
    
    
    
    
    
    
    
    var body: some View {
        VStack {
            Text("The result is \(sex) & and Bmi is \(result)")
            GaugeView(title: "Speed", value: Int(result), colors: [.red, .yellow, .green, .green, .yellow, .red])
                .frame(width: 300, height: 300, alignment: .trailing)
        }
        
        
        
        
    }
}

struct resultView_Previews: PreviewProvider {
    static var previews: some View {
        resultView()
    }
}
