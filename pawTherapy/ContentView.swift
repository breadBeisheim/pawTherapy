//
//  ContentView.swift
//  pawTherapy
//
//  Created by Scholar on 7/17/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Paw Therapy")
                    .font(.largeTitle)
                    .fontWeight(.light)
                   
            
                    
                        .padding(0)
                    
                    Text("Click on me to try a fun scavenger hunt!")
                        .font(.subheadline)
                        .padding(0)
                
                HStack {
                    Text("Click on me to try a challenging puzzle!")
                        .font(.subheadline)
                        .padding(0)
                    
                    
                    
                }
                HStack {
                    
                    
                    Text("Click on me to try a mid boggling riddle!")
                        .font(.subheadline)
                    
                    Text("Click on me to try a relaxing meditation!")
                        .font(.subheadline) }
                
                HStack {
                    
                    Image("blackcat")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    Image("greycat2")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)

                    Image("gingercat2")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    
                    Image("pinkishcat2")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    
                    
                                    }
                   
               
                
                
                
                
            }
               }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
