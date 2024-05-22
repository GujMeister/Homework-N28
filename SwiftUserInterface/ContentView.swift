//
//  ContentView.swift
//  SwiftUserInterface
//
//  Created by Luka Gujejiani on 22.05.24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentColor: Color = .blue
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("skibidi UI eksersaisi")
                        .bold()
                        .font(.system(size: 35))
                        .padding(.leading, 18)
                    Spacer()
                }
                .padding(.bottom, -20)
                
                HStack {
                    SongsView()
                        .padding()
                    VStack {
                        ChatsView()
                        NewsView()
                    }
                }
                
                List(sampleData) { item in
                    HStack {
                        Image(systemName: "list.bullet.rectangle.portrait.fill")
                            .resizable()
                            .foregroundColor(.white)
                            .scaledToFit()
                            .frame(width: 19, height: 19)
                            .frame(width: 40, height: 40)
                            .background(Color.cyan.opacity(0.7))
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text(item.title)
                                .font(.headline)
                            Text(item.description)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.vertical, 5)
                }
                .listStyle(PlainListStyle())
            }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        currentColor = colors.randomElement() ?? .blue
                    }) {
                        Image(systemName: "arrow.counterclockwise")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .padding()
                            .background(currentColor)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                    }
                    .padding([.bottom, .trailing], 20)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
