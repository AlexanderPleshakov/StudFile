//
//  ContentView.swift
//  StudFile
//
//  Created by Александр Плешаков on 23.11.2022.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    @State private var choiceMade:String = "Search"
    @State private var buttonSearchColor = Color.red
    
    var color1 = Color(UIColor(displayP3Red: 234, green: 98, blue: 139, alpha: 1))
    var color2 = Color(UIColor(displayP3Red: 244, green: 177, blue: 245, alpha: 1))
    let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [color2,
                                                       skyBlue]),
                           startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
                
            VStack {
                Spacer()
                
                Text("Please, select your univercity")
                    .padding(.bottom, 30)
                
                Menu {
                    Button {
                        choiceMade = "First univercity"
                        buttonSearchColor = Color.green
                    } label: {
                        Text("First univercity")
                    }
                    Button {
                        choiceMade = "Second univercity"
                    } label: {
                        Text("Second univercity")
                    }

                } label: {
                    Label {
                        Text(choiceMade)
                    } icon: {
                        Image(systemName: "magnifyingglass")
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 20)

                }
                .foregroundColor(Color.black)
                .background(buttonSearchColor)
                .cornerRadius(15)
                .padding(.bottom, 20)
                
                Spacer()

                Button {
                    
                } label: {
                    HStack {
                        Text("Next")
                            
                        Image(systemName: "arrow.forward")
                    }
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .font(.system(size: 30))
                        
                }
                .background(Color.green)
                .cornerRadius(15)
                .padding(.bottom, 30)

                

            }
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
