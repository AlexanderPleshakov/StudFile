//
//  ContentView.swift
//  StudFile
//
//  Created by Александр Плешаков on 23.11.2022.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    var buttonSearchColor = SearchUnivView().buttonSearchColor
    var selectText = SearchUnivView().selectText
    
    @State private var choiceMade:String = "Search"
    @State var showingBottomSheet = false

    let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white,
                                                       skyBlue]),
                           startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
                
            VStack {
                Spacer()
                
                Text("Please, select your univercity")
                    .padding(.bottom, 30)
                    .font(.system(size: 20))
                
                VStack {
                    Button(selectText) {
                        showingBottomSheet.toggle()
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .foregroundColor(Color.black)

                }
                .sheet(isPresented: $showingBottomSheet) {
                    SearchUnivView()
                }
                .background(buttonSearchColor)
                .cornerRadius(10)

                
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


