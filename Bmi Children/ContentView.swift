//
//  ContentView.swift
//  Bmi Children
//
//  Created by Can on 6.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    
    @StateObject private var viewModel = bmiViewModel()
    
    
    
    
    
    
    
    
    var body: some View {
    
        
        
        
        
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            NavigationView {
        
            VStack {
                VStack {
                Text("Bmi For Children")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                
                //heading
                
                Spacer()
                    .frame(height: 30)
                
                    sexView(sex: $viewModel.sex)
                 
                Spacer()
                    .frame(height: 20)
                    
                
                    units(unit: $viewModel.unit)
                
                Spacer()
                    .frame(height: 20)
                
                    HStack {
                        
                        Spacer()
                        
                        if viewModel.unit == "metric" {
                            
                            singleWheelView(firstDigit: $viewModel.heightFirstDigit, wheelTitle: viewModel.heightTitle)
                            
                            Spacer()
                                .frame(width: 30)
                            
                            
                            
                            wheelView(firstDigit: $viewModel.weightFirstDigit, secondDigit: $viewModel.weightSecondDigit, firstDigitText: viewModel.weightFirstDigitText, secondDigitText: viewModel.weightSecondDigitText,  wheelTitle: viewModel.weightTitle)
                                
                           
                            Spacer()
                        
                        
                        } else {
                            wheelView(firstDigit: $viewModel.weightFirstDigit, secondDigit: $viewModel.weightSecondDigit, firstDigitText: viewModel.heightFirstDigitText, secondDigitText: viewModel.heightSecondDigitText, wheelTitle: viewModel.heightTitle)
                            
                            Spacer()
                                .frame(width: 30)
                            
                            
                            
                            wheelView(firstDigit: $viewModel.weightFirstDigit, secondDigit: $viewModel.weightSecondDigit, firstDigitText: viewModel.weightLbsText, secondDigitText: viewModel.weightLbsSecondText,  wheelTitle: viewModel.weightTitle)
                                
                           
                            Spacer()
                            
                        }
                        
                    
                        
                       
                        
                        
                        
                       
                        
                        
                        
                    } // hstack for weight & height
                    
                
                Spacer()
                    .frame(height: 20)
                
                    ageSlider(age: $viewModel.age)
                
                Spacer()
                    .frame(height: 40)
                
                }  // vstackchild
                
               
                NavigationLink(destination: resultView(sex: viewModel.sex), isActive: $viewModel.isShowingResultsView) { EmptyView() }
                
                
                Button("Calculate Bmi") {
                  
                    print("glkjdf")
                    self.viewModel.isShowingResultsView = true
                    
                    
                }
                    
                
                    
                
                
                .font(.title)
                .foregroundColor(.white)
                
                .frame(width: 300, height: 70)
                .background(.red)
                
                .cornerRadius(15.0)
                
                Text("can \(viewModel.unit) & \(viewModel.sex) & \(Int(viewModel.age)) & \(viewModel.weightFirstDigit)")
                
                 
                
                
                
            } // vstack master
            .navigationTitle("")
            
            
                
            
      
        } // zstack
        
        } // navigationView
        
        
    }
    
    
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
