//
//  NewsView.swift
//  SwiftUserInterface
//
//  Created by Luka Gujejiani on 22.05.24.
//

import SwiftUI

struct NewsView: View {
    
    @State private var firstGradient: Color = .purple
    @State private var secondGradient: Color = .blue
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(                    
                    LinearGradient(
                    gradient: Gradient(colors: [firstGradient, secondGradient]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ))
            
            
            VStack {
                HStack {
                    Button(action: {
                        firstGradient = colors.randomElement() ?? .purple
                        secondGradient = colors.randomElement() ?? .blue
                    }) {
                        Image(systemName: "person.fill")
                            .foregroundColor(.white)
                            .frame(width: 32, height: 32)
                            .background(Color.white.opacity(0.4))
                            .clipShape(Circle())
                    }
                    Spacer()
                }
                
                Text("ცეცხლოვანი\nსიახლეები")
                    .font(.system(size: 9))
                    .bold()
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                Spacer()
            }
            .padding(.leading, 16)
            .padding(.top, 12)
            
            HStack {
                Spacer()
                Image("NewsBackground")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .offset(x: 30, y: 10)
            }
            
        }
        .frame(width: 165, height: 110)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    NewsView()
}
