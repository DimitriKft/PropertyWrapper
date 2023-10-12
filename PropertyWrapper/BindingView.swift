//
//  BindingView.swift
//  PropertyWrapper
//
//  Created by dimitri on 08/10/2023.
//

import SwiftUI


struct BindingView: View {
    @State var hello = "Salut"
     var body: some View {
         VStack {
             Text("@Binding var helloBind: String")
                 .font(.system(size: 19, design: .monospaced))
                 .fontWeight(.bold)
                 .foregroundStyle(.purple)
                 .padding()
             Text("@Binding est utilisé pour créer une liaison bidirectionnelle à une propriété d'état d'une autre vue. Cela permet à une vue de modifier l'état d'une autre vue.")
                 .padding()
                 .fontWeight(.bold)
             Text(hello)
             BtnView(helloBind: $hello)
         }
     }
}



struct BtnView: View {
    @Binding var helloBind: String
    var body: some View {
        Button(action: {
            helloBind = "Hello"
        }, label: {
            Text("Traduction !")
        })
    }
}





#Preview {
    BindingView()
}
