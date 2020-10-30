//
//  NeumorphicButton.swift
//  
//
//  Created by Kamaal Farah on 30/10/2020.
//

import SwiftUI

public struct NeumorphicButton<Label>: View where Label: View {
    @Environment(\.colorScheme)
    var colorScheme

    public let action: () -> Void
    public let label: Label

    public init(action: @escaping () -> Void, @ViewBuilder label: () -> Label) {
        self.action = action
        self.label = label()
    }

    public var body: some View {
        ZStack {
            if colorScheme == .dark {
                Button(action: action) {
                    label
                }
                .buttonStyle(DarkNeumorphicButtonStyle())
            } else {
                Button(action: action) {
                    label
                }
                .buttonStyle(LightNeumorphicButtonStyle())
            }
        }
        .animation(nil)
    }
}

#if DEBUG
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicButton(action: { }) {
            Text("kdlfkm")
        }
    }
}
#endif
