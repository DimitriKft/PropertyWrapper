//
//  EnvironmentObjectView.swift
//  PropertyWrapper
//
//  Created by dimitri on 10/10/2023.
//

import SwiftUI

class UserManager: ObservableObject {
    @Published var isLoggedIn = false
}

struct EnvironmentObjectView: View {
    @EnvironmentObject var userManager: UserManager

      var body: some View {
          NavigationStack {
              VStack {
                  Text("  @EnvironmentObject var userManager: UserManager")
                      .font(.system(size: 11, design: .monospaced))
                      .fontWeight(.bold)
                      .foregroundStyle(.purple)
                      .padding()
                  Text("@EnvironmentObject est un property wrapper qui est utilisé pour injecter une instance d'une classe observable (qui adhère au protocole ObservableObject) dans la hiérarchie de vue, permettant ainsi à ces vues d’observer des changements dans cet objet.")
                      .padding()
                      .fontWeight(.bold)
                  if userManager.isLoggedIn {
                      NavigationLink {
                          LoggedInView()
                      } label: {
                          Text("Vérification de la connxion")
                      }
                     
                  } else {
                      NavigationLink {
                          LoginView()
                      } label: {
                          Text("Vérification de la connxion")
                      }
                  }
              }
          }
      }
}


struct LoginView: View {
    @EnvironmentObject var userManager: UserManager
    var body: some View {
            VStack {
                Text("Vous êtes déconnecté")
                Button("Connexion") {
                    userManager.isLoggedIn = true
                }
            }
        }
    }

struct LoggedInView: View {
    @EnvironmentObject var userManager: UserManager

    var body: some View {
        VStack {
            Text("Vous êtes connecté")
            Button("Déconnexion") {
                userManager.isLoggedIn = false
            }
        }
    }
}



#Preview {
    EnvironmentObjectView()
        .environmentObject(UserManager())
}
