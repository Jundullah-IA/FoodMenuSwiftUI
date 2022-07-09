//
//  ContentView.swift
//  FoodMenuSwiftUI
//
//  Created by Jundullah Ilhaq Aulia on 14/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(foodSet) {food in
                    CardView(food: food)
                }
                .listStyle(.inset)
                .padding(.top, 15)
            }
            
            .navigationTitle("Food List")
            .navigationViewStyle(.automatic)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: ProfileView()) {
                        Image(systemName: "person")
                            .resizable()
                            .scaledToFill()
                            .frame(height: 25)
                            .foregroundColor(.black)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.black, lineWidth: 1))
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
