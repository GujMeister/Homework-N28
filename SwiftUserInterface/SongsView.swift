//
//  SongsView.swift
//  SwiftUserInterface
//
//  Created by Luka Gujejiani on 22.05.24.
//

import SwiftUI

struct SongsView: View {
    
    @State private var titleLabel: String = "We love property wrappers and closures"
    
    var body: some View {
        ZStack {
            Image("SongBackground")
                .resizable()
                .scaledToFill()
                .cornerRadius(20)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Button(action: {
                        titleLabel = sampleData.randomElement()?.title ?? "We love property wrappers and closures"
                    }) {
                        Image(systemName: "mic.fill")
                            .foregroundColor(.white)
                            .frame(width: 32, height: 32)
                            .background(Color.white.opacity(0.4))
                            .clipShape(Circle())
                    }
                    Spacer()
                }
                
                Text("ჯუზონები და რამე")
                    .font(.system(size: 9))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                
                Text(titleLabel)
                    .font(.title2)
                    .bold()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: 165, maxHeight: 232, alignment: .topLeading)
                    .padding(.top, 20)
                
            }
            .padding()
        }
        .frame(width: 165, height: 232)
    }
}

#Preview {
    SongsView()
}

