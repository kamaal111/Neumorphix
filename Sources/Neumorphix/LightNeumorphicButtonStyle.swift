//
//  LightNeumorphicButtonStyle.swift
//  
//
//  Created by Kamaal Farah on 30/10/2020.
//

import SwiftUI

public struct LightNeumorphicButtonStyle: ButtonStyle {
    public init() { }

    public func makeBody(configuration: Self.Configuration) -> some View {
        ZStack {
            if configuration.isPressed {
                configuration.label
                    .padding(.all, 8)
                    .background(Color.nOffWhite)
                    .overlay(
                        Rectangle()
                            .stroke(Color.gray, lineWidth: 4)
                            .blur(radius: 4)
                            .offset(x: 2, y: 2)
                            .mask(Rectangle().fill(LinearGradient(Color.black, Color.clear)))
                            .cornerRadius(8)
                    )
                    .overlay(
                        Rectangle()
                            .stroke(Color.white, lineWidth: 4)
                            .blur(radius: 4)
                            .offset(x: -2, y: -2)
                            .mask(Rectangle().fill(LinearGradient(Color.clear, Color.black)))
                            .cornerRadius(8)
                    )
            } else {
                configuration.label
                    .padding(.all, 8)
                    .background(Color.nOffWhite)
                    .cornerRadius(8)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
            }
        }
    }
}
