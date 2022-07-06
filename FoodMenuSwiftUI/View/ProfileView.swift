//
//  ProfileView.swift
//  FoodMenuSwiftUI
//
//  Created by Jundullah Ilhaq Aulia on 21/06/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Image("profile_picture")
                .scaledToFill()
                .clipShape(Circle())
                .shadow(radius: 10)
                .padding(.top, 30)

            
            Text("Jundullah Ilhaq Aulia")
                .bold()
                .padding(.top, 25)
                .padding(.bottom, 1)
                .font(.title)
            
            Text("jundullah.ilhaq@gmail.com")
                .font(.title3)
            
            Spacer()
            
                .navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
