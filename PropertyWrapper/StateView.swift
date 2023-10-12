//
//  StateView.swift
//  PropertyWrapper
//
//  Created by dimitri on 08/10/2023.
//

import SwiftUI

struct StateView: View {
    var message = "hey"
   @State var hello = "Salut"
    var body: some View {
        VStack {
            Text("@State var hello = \"Salut\"")
                .font(.system(size: 19, design: .monospaced))
                .fontWeight(.bold)
                .foregroundStyle(.purple)
                .padding()
            Text("@State est utilisé pour déclarer une propriété d'état qui appartient à une vue et qui est stockée par SwiftUI. Lorsque la propriété d'état change, la vue se met à jour pour refléter ce changement.")
                .padding()
                .fontWeight(.bold)
            Text(hello)
            Button(action: {
                hello = "Hello"
            }, label: {
                Text("Traduction !")
        })
        }
    }
}

#Preview {
    StateView()
}


