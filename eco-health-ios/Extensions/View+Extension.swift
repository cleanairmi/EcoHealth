//
//  View+Extension.swift
//  eco-health-ios
//
//  Created by Rohit Mahesh on 10/18/23.
//

import SwiftUI

extension View {
    func onBackSwipe(perform action: @escaping () -> Void) -> some View {
        gesture(
            DragGesture()
                .onEnded({ value in
                    if value.startLocation.x < 50 && value.translation.width > 80 {
                        action()
                    }
                })
        )
    }
}
