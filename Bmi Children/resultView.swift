//
//  resultView.swift
//  Bmi Children
//
//  Created by Can on 31.05.2022.
//

import SwiftUI

struct resultView: View {
    
    @StateObject private var viewModel = bmiViewModel()
    
    @State var sex = ""
    @State var result: Double = 1.1
    
    
    
    
    
    
    var body: some View {
        Text("The result is \(sex) & and Bmi is \(result)")
    }
}

struct resultView_Previews: PreviewProvider {
    static var previews: some View {
        resultView()
    }
}
