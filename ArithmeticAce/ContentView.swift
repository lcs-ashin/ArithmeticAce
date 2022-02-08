//
//  ContentView.swift
//  ArithmeticAce
//
//  Created by Eunbi Shin on 2022-02-08.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored Properties
    let multiplicand = Int.random(in: 1...50)
    let multiplier = Int.random(in: 1...50)
    
    // MARK: Computed Properties
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image(systemName: "multiply")
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("\(multiplicand)")
                    Text("\(multiplier)")
                }
            }
            .font(.system(size: 70).bold())
            .padding(30)
            
            Divider()
            
            HStack {
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.green)
                
                Spacer()
                
                Text("30")
            }
            .font(.system(size: 70).bold())
            .padding(30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
