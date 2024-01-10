//
//  RoundOutlinedButton.swift
//  MySpotify
//
//  Created by Mohit Soni on 09/01/24.
//

import SwiftUI

struct RoundOutlinedButton: View {
    let width: CGFloat?
    let height: CGFloat?
    let tittle: String?
    let action: () -> Void
    let image: ImageResource?
    var body: some View {
        Button(action: action, label: {
            HStack(spacing: 0) {
                    if let image = image {
                        Image(image)
                            .resizable()
                            .scaledToFit()
                            .fontWeight(.bold)
                            .frame(width: (width ?? 100) * 0.2, height: (height ?? 100) * 0.6, alignment: .center)
                    }
                    Text(tittle ?? "")
                        .frame(width: (width ?? 100) * 0.75, height: (height ?? 100) * 0.6, alignment: .center)
                        .foregroundStyle(Color.white)
                        .fontWeight(.bold)
                }
                .padding(EdgeInsets(top: 0, leading: (width ?? 100) * 0.04 , bottom: 0, trailing: (width ?? 100) * 0.045))
        })
        .frame(width: width, height: height)
        .background(Capsule().stroke(.white, lineWidth: 1))
        .foregroundStyle(Color.black)
    }
}

#Preview {
    RoundOutlinedButton(width: 360, height: 50, tittle: "Continue with Google", action: {}, image: .google)
}
