//
//  CardView.swift
//  FoodMenuSwiftUI
//
//  Created by Jundullah Ilhaq Aulia on 21/06/22.
//

import SwiftUI

struct CardView: View {
    var food = Food()
    
    var body: some View {
        NavigationLink(destination: DetailView(food: food)) {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.white)
                    .opacity(0.1)
                    .shadow(color: .gray, radius: 10, x: 1, y: 1)
                
                HStack {
                    Image(food.image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(width: 75)
                        .padding(.leading, 10)
                    
                    VStack {
                        HStack {
                            Text(food.name)
                                .bold()
                                .foregroundColor(.black)
                                .font(.title)
                            
                            Spacer()
                        }
                        
                        HStack {
                            Text(food.description)
                                .font(.title3)
                                .foregroundColor(.gray)
                                .lineLimit(2)
                            
                            Spacer()
                        }
                    }
                }
            }
            .frame(height: 85)
            .padding(.horizontal, 10)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
