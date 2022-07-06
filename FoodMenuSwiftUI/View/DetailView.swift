//
//  DetailView.swift
//  FoodMenuSwiftUI
//
//  Created by Jundullah Ilhaq Aulia on 21/06/22.
//

import SwiftUI

struct DetailView: View {
    var food = Food()
    
    var body: some View {
        VStack {
            ZStack {
                Image(food.image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)
                    .clipShape(Rectangle())
                
                HStack {
                    Text(food.name)
                        .bold()
                        .font(.largeTitle)
                        .padding(.vertical, 10)
                        .padding(.leading, 25)
                        .padding(.trailing)
                        .background(Color.gray.opacity(0.9))
                    
                    Spacer()
                }.padding(.top, 200)
            }
            
            VStack {
                Text(food.description)
                    .multilineTextAlignment(.center)
            }
            .padding(7)
            
            Spacer()
            
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
