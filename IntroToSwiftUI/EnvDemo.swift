//
//  EnvDemo.swift
//  IntroToSwiftUI
//
//  Created by Mohammad Azam on 2/13/21.
//

import SwiftUI

class Settings: ObservableObject {
    @Published var counter: Int = 0 
}

struct EnvDemo: View {
    var body: some View {
        VStack {
            FancyCounterView()
            IncrementCounterView()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct EnvDemo_Previews: PreviewProvider {
    static var previews: some View {
        EnvDemo().environmentObject(Settings())
    }
}

struct FancyCounterView: View {
    
    @EnvironmentObject var settings: Settings
    
    var body: some View {
        VStack {
            Text("\(settings.counter)")
                .font(.largeTitle)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.orange)
    }
}

struct IncrementCounterView: View {
    
    @EnvironmentObject var settings: Settings
    
    var body: some View {
        VStack {
            Button("Increment") {
                settings.counter += 1
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green)
    }
}
