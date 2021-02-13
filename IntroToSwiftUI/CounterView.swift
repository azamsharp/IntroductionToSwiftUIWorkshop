//
//  CounterView.swift
//  IntroToSwiftUI
//
//  Created by Mohammad Azam on 2/13/21.
//

import SwiftUI

/*
struct CounterView: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        VStack {
            Text("\(counter)")
                .font(.system(size: 50))
            Button("Increment") {
                counter += 1
            }
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
} */

struct RoomView: View {
    
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack {
           LightBulb(isOn: $isOn)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isOn ? Color.black : Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}

struct LightBulb: View {
    
    //@State private var isOn: Bool = false
    
    @Binding var isOn: Bool
    
    var body: some View {
        
        if isOn {
            Image(systemName: "lightbulb.fill")
                .font(.largeTitle)
                .foregroundColor(.yellow)
        } else {
            Image(systemName: "lightbulb")
                .font(.largeTitle)
        }
        
        Button(isOn ? "Turn Off" : "Turn On") {
            isOn.toggle()
        }
    }
}

struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        RoomView()
    }
}
