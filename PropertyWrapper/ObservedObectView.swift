//
//  ObservableObjectView.swift
//  PropertyWrapper
//
//  Created by dimitri on 09/10/2023.
//

import SwiftUI

struct ObservedObectView: View {
    @ObservedObject var counter = Counter()

       var body: some View {
           NavigationStack {
               VStack {
                   Text(" @ObservedObject var counter = Counter()")
                       .font(.system(size: 14, design: .monospaced))
                       .fontWeight(.bold)
                       .foregroundStyle(.purple)
                       .padding()
                   Text("@ObservedObject est utilisé pour créer une propriété qui fait référence à un objet observable (conformant au protocole ObservableObject). Lorsque l'objet observable est mis à jour, la vue qui l'utilise se met à jour également.")
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

#Preview {
    ObservedObectView()
}

struct ChildView: View {
    @ObservedObject var counter: Counter

    var body: some View {
        VStack {
            Text("Counter: \(counter.value)")
                .font(.largeTitle)
            Button("Decrement", action: counter.decrement)
        }
    }
}

