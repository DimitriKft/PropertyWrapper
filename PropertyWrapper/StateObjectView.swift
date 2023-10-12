//
//  StateObjectView.swift
//  PropertyWrapper
//
//  Created by dimitri on 10/10/2023.
//

import SwiftUI

struct StateObjectView: View {
    @StateObject var counter = Counter()

       var body: some View {
           NavigationStack {
               VStack {
                   Text("@StateObject var counter = Counter()")
                       .font(.system(size: 16, design: .monospaced))
                       .fontWeight(.bold)
                       .foregroundStyle(.pink)
                       .padding()

                   Text(" @StateObject est un property wrapper utilisé pour créer et gérer l'état d'une instance d'une classe qui conforme au protocole ObservableObject.")
                       .padding()
                       .fontWeight(.bold)
                   Text("Counter: \(counter.value)")
                       .font(.largeTitle)
                   
                   Button("Increment", action: counter.increment)
                   
                   NavigationLink("Go to ChildView", destination: ChildView(counter: counter))
               }
           }
       }
}


struct ChildVStateiew: View {
    @ObservedObject var counter: Counter

    var body: some View {
        VStack {
            Text("Counter: \(counter.value)")
                .font(.largeTitle)
            Button("Decrement", action: counter.decrement)
        }
    }
}



#Preview {
    StateObjectView()
}
