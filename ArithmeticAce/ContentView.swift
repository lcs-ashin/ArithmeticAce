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
    
    // Holds the user's input
    @State var inputGiven = ""
    
    // MARK: Computed Properties
    var correctAnswer: Int {
        return multiplicand * multiplier
    }
    
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
                
                TextField("",
                          text: $inputGiven)
                    .multilineTextAlignment(.trailing)
            }
            .font(.system(size: 70).bold())
            .padding(30)
            
            Button(action: {
                // Guard statement to convert the input to an Int
                guard let answerGiven = Int(inputGiven) else {
                    // Input is invalid
                    return
                }
                
                // Check the answer
                if answerGiven == correctAnswer {
                    // Show the checkmark
                } else {
                    // Indicate this is the wrong answer
                }
            }, label: {
                // Label
                Text("Check Answer")
                    .font(.largeTitle)
            })
                .buttonStyle(.bordered)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
