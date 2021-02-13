//
//  ContentView.swift
//  IntroToSwiftUI
//
//  Created by Mohammad Azam on 2/13/21.
//

import SwiftUI

struct ContentView: View {
    
    let animals = ["🦓", "🦒", "🦛", "🐂", "🐅", "🐇"]
    
    var body: some View {
        NavigationView {
            List(animals, id: \.self) { animal in
                
                NavigationLink(
                    destination: AnimalDetailView(animal: animal),
                    label: {
                        Text(animal)
                            .font(.system(size: 75))
                    })
                
            }
            
            .navigationTitle("Animals")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
