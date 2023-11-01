//
//  UIDevice+Extension.swift
//  eco-health-ios
//
//  Created by Rohit Mahesh on 10/10/23.
//

import SwiftUI

extension UIDevice {
    static var hasTopNotch: Bool {
        if #available(iOS 11.0, tvOS 11.0, *) {
            return UIApplication.shared.delegate?.window??.safeAreaInsets.top ?? 0 > 20
        }
        return false
    }
}
