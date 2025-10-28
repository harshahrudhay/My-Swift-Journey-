//
//  Extension+UIDevice.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 24/07/25.
//

import Foundation
import SwiftUI

extension UIDevice {
    static var isIPad : Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }
    static var isIPhone : Bool {
        UIDevice.current.userInterfaceIdiom == .phone
    }
    static var isMac : Bool {
        UIDevice.current.userInterfaceIdiom == .mac
    }
}
