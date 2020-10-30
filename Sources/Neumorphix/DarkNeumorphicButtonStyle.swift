//
//  DarkNeumorphicButtonStyle.swift
//  
//
//  Created by Kamaal Farah on 30/10/2020.
//

import SwiftUI

public struct DarkNeumorphicButtonStyle: ButtonStyle {
    public init() { }

    public func makeBody(configuration: Self.Configuration) -> some View {
        ZStack {
            if configuration.isPressed {
                configuration.label
                    .padding(8)
                    .background(Color.nDarkEnd)
                    .cornerRadius(8)
                    .shadow(color: Color.nDarkStart, radius: 10, x: 5, y: 5)
                    .shadow(color: Color.nDarkEnd, radius: 10, x: -5, y: -5)
            } else {
                configuration.label
                    .padding(8)
                    .background(Color.nDarkEnd)
                    .cornerRadius(8)
                    .shadow(color: Color.nDarkStart, radius: 10, x: -10, y: -10)
                    .shadow(color: Color.nDarkEnd, radius: 10, x: 10, y: 10)
            }
        }
    }
}
