//
//  ContentView.swift
//  PhotoPrivate
//
//  Created by Theo Kremer on 10/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            VStack {
                Text("Setup Time")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                Text("let's create a password")
                    .padding()
            }
            Spacer(minLength: 100);
            VStack {
                let nums = [
                    ["1","2","3"],
                    ["4","5","6"],
                    ["7","8","9"]
                ]
                ForEach(nums, id: \.self) { row in
                    HStack(spacing: 20) {
                        ForEach(row, id: \.self) { number in
                            Button(action: {
                                    
                            }, label: {
                                Text(number)
                                    .foregroundColor(Color.white)
                            })
                        }
                    .frame(width: 85, height: 85)
                    .background(Color.black)
                    .cornerRadius(50)
                    }
                }
                .padding(.top)
            }
            VStack {
                Spacer()
                Text("step 1 / 3")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 11")
        }
    }
}
