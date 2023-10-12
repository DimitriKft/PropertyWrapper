//
//  ContentView.swift
//  PropertyWrapper
//
//  Created by dimitri on 08/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List{
                NavigationLink {
                    PropertyView()
                } label: {
                    Text("Propriété statique")
                }
                NavigationLink {
                    StateView()
                } label: {
                    Text("@State")
                }
                NavigationLink {
                    BindingView()
                } label: {
                    Text("@Binding")
                }
                NavigationLink {
                    ObservedObectView()
                } label: {
                    Text("@ObservedObject")
                }
                NavigationLink {
                    StateObjectView()
                } label: {
                    Text("@StateObject")
                }
                NavigationLink {
                    EnvironmentObjectView()
                } label: {
                    Text("@EnvironmentObect")
                }
                NavigationLink {
                    EnvironemntView()
                } label: {
                    Text("@Environment")
                }
            }
            .navigationTitle("Property Wrapper")
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
        .environmentObject(UserManager())
}
