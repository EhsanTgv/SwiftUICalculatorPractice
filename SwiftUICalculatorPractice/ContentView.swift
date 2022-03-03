//
//  ContentView.swift
//  SwiftUICalculatorPractice
//
//  Created by İbrahim on 3.03.2022.
//

import SwiftUI

struct ContentView: View {
    let grid = [
        ["AC","Del","%","/"],
        ["7","8","9","X"],
        ["4","5","6","-"],
        ["1","2","3","+"],
        [".","0","","="],
    ]
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text("Hello, world!")
                    .padding()
                    .foregroundColor(Color.white)
                    .font(.system(size: 30, weight: .heavy))
            }
            HStack{
                Spacer()
                Text("Hello, world!")
                    .padding()
                    .foregroundColor(Color.white)
                    .font(.system(size: 50, weight: .heavy))
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        
        ForEach(grid,id:\.self) {
            row in
            HStack{
                ForEach(row, id: \.self) {
                    cell in
                    Button(action: {}, label: {
                        Text(cell)
                            .foregroundColor(.white)
                            .font(.system(size: 40,weight:.heavy))
                            .frame(maxWidth:.infinity,maxHeight:.infinity)
                    })
                }
            }
        }
        
        .background(Color.black.ignoresSafeArea())
    }
    
//    func buttonPressed(cell:String) {
//
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
