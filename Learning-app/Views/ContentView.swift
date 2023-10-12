//
//  ContentView.swift
//  Learning-app
//
//  Created by Tayami Rai on 10/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        ScrollView{
            LazyVStack{
                
                if model.currentModule != nil {
                    
                    ForEach(0..<model.currentModule!.content.lessons.count){ index in
                        
                        NavigationLink {
                            ContentDetailView()
                                .onAppear{
                                    model.beginLesson(index)
                                }
                        } label: {
                            ContentViewRow(index: index)

                        }

                    }
                }
                
                
            }
            .accentColor(.black)
            .padding()
            .navigationTitle("Learn \(model.currentModule?.category ?? "")")
        }
    }
}
