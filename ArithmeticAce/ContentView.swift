//
//  ContentView.swift
//  ArithmeticAce
//
//  Created by Eunbi Shin on 2022-02-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "multiply")
                
                Spacer()
                
                VStack {
                    Text("5")
                    Text("6")
                }
            }
            .font(.system(size: 70).bold())
            .padding(30)
            
            Divider()
            
            HStack {
                Image(systemName: "checkmark.circle")
                
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
