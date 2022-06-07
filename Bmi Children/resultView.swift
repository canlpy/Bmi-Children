//
//  resultView.swift
//  Bmi Children
//
//  Created by Can on 31.05.2022.
//

import SwiftUI

struct resultView: View {
    
    @State var sex = "female"
    
    
    var body: some View {
        Text("The result is \(sex)")
    }
}

struct resultView_Previews: PreviewProvider {
    static var previews: some View {
        resultView()
    }
}
