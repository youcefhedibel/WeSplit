//
//  ContentView.swift
//  webSplitt
//
//  Created by mac on 22/8/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 10.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    
    var body: some View {
        NavigationView{
            Form{
                            Section{
                                TextField("Amount", value: $checkAmount, format: .currency(code: "DZD"))
                                    .keyboardType(.decimalPad)
                                
                                Picker("Number of people", selection: $numberOfPeople){
                                    ForEach(0..<10){
                                        
                                        Text("\($0) peoples")
                                    }
                                }
                            }
                            Section{
                                
                                Picker("Tip percentage", selection: $tipPercentage){
                                    ForEach(tipPercentages, id: \.self){
                                        Text($0, format: .percent)
                                    }
                                }.pickerStyle(.segmented)
                            } header: {
                                Text("How much tip you want to leave ?")
                            }
                            
                            Section{
                                Text(checkAmount, format: .currency(code: "DZD"))
                            }
            }.navigationTitle("WeSplit")
        }
     
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
