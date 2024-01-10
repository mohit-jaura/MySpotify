//
//  SignUpView.swift
//  MySpotify
//
//  Created by Mohit Soni on 09/01/24.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center, spacing: 15) {
                Spacer()
                VStack {
                    Image(.mainIcon)
                        .resizable()
                        .scaledToFit()
                        .fontWeight(.bold)
                        .frame(width: 50, height: 50)
                        .imageScale(.large)
                    Text("Millions of songs.")
                        .foregroundStyle(.white)
                        .font(.title)
                        .fontWeight(.bold)
                    Text("Free on My Spotify")
                        .foregroundStyle(.white)
                        .font(.title)
                        .fontWeight(.bold)
                }
                ForEach(SignUpType.allCases, id: \.self) {
                    type in
                    NavigationLink {
                        //                        JokesView(category: category)
                    } label: {
                        RoundOutlinedButton(width: geometry.size.width * 0.9, height: 50, tittle: type.title, action: {}, image: type.icon)
                    }
                }
            }
            .padding(.bottom, 40)
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(Color.black)
        }
    }
}

#Preview {
    SignUpView()
}
