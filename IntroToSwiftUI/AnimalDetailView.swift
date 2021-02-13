//
//  AnimalDetailView.swift
//  IntroToSwiftUI
//
//  Created by Mohammad Azam on 2/13/21.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: String
    
    var body: some View {
        Text(animal)
            .font(.system(size: 100))
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalDetailView(animal: "🦓")
    }
}
