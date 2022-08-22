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
        Form{
            Section{
                TextField("Amount", value: $checkAmount, format: .currency(code: "DZD") )
            }
            
            Section{
                Text(checkAmount, format: .currency(code: "DZD"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
