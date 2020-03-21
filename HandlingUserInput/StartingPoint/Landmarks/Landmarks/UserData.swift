//
//  UserData.swift
//  Landmarks
//
//  Created by Muhammad Fawwaz Mayda on 21/03/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavouritesOnly = false
    @Published var landmark = landmarkData
    
}
