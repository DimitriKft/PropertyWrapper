//
//  PropertyView.swift
//  PropertyWrapper
//
//  Created by dimitri on 10/10/2023.
//

import SwiftUI

struct PropertyView: View {
    var hello = "Hello, world!"
    var body: some View {
        VStack {
            Text("var hello = \"Hello, world!\"")
                .font(.system(size: 19, design: .monospaced))
                .fontWeight(.bold)
                .foregroundStyle(.purple)
                .padding()
            Text("Propriété : Une variable ou une constante associée à une instance d'une classe, d'une structure ou d'une énumération")
                .padding()
                .fontWeight(.bold)
            Text(hello)
        }
    }
}

#Preview {
    PropertyView()
}
