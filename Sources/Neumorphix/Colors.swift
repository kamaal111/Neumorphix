//
//  Colors.swift
//  
//
//  Created by Kamaal Farah on 30/10/2020.
//

import SwiftUI

public extension Color {
    static let nOffWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
    static let nDarkStart = Color(red: 50 / 255, green: 60 / 255, blue: 65 / 255)
    static let nDarkEnd = Color(red: 25 / 255, green: 25 / 255, blue: 30 / 255)
}

public extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}
