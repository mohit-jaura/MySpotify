//
//  SignUpModels.swift
//  MySpotify
//
//  Created by Mohit Soni on 09/01/24.
//

import Foundation
import SwiftUI
enum SignUpType: Int, CaseIterable {
    case phone = 0, google, facebook, apple

    var title: String {
        switch self {
        case .phone:
            return "Continue with phone number"
        case .google:
            return "Continue with Google"
        case .facebook:
            return "Continue with Facebook"
        case .apple:
            return "Continue with Apple"
        }
    }

    var icon: ImageResource {
        switch self {
        case .phone:
            return .phone
        case .google:
            return .google
        case .facebook:
            return .facebook
        case .apple:
            return .apple
        }
    }
}
