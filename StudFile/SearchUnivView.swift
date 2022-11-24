//
//  SearchUnivView.swift
//  StudFile
//
//  Created by Александр Плешаков on 24.11.2022.
//

import SwiftUI

struct SearchUnivView: View {
    private var listOfUniv = ["u1", "u2", "u3"]
    @State var searchText = ""
    @State var buttonSearchColor = Color.red
    @State var selectText = "Select"
    
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(universities, id: \.self) { univ in
                    HStack {
                        Button(action: {
                            buttonSearchColor = Color.green
                            selectText = univ.capitalized
                            
                        },
                               label: {
                            Text(univ.capitalized)
                        })
                    }
                    .padding(.all, 10)
                }
                
                
            }
            .searchable(text: $searchText)
            .navigationTitle("Universities")
        }
    }
    
    var universities: [String] {
        let lcUnivercites = listOfUniv.map { $0.lowercased() }
        
        return searchText == "" ? lcUnivercites : lcUnivercites.filter {
            $0.contains(searchText.lowercased())
        }
        
    }
    
}

struct SearchUnivView_Previews: PreviewProvider {
    static var previews: some View {
        SearchUnivView()
    }
}
