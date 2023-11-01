//
//  OffsetModifier.swift
//  eco-health-ios
//
//  Created by Rohit Mahesh on 10/04/23.
//

import SwiftUI

struct OffsetModifier: ViewModifier {
    
    @Binding var offSet: CGFloat
    
    func body(content: Content) -> some View {
         content
            .overlay(
                GeometryReader{ proxy -> Color in
                    let minY = proxy.frame(in: .named("SCROLL")).minY
                    DispatchQueue.main.async {
                        self.offSet = minY
                    }
                    return Color.clear
                }, alignment: .top
            )
    }
    
}
