//
//  UIApplication.swift
//  AVBasicPlayback
//
//  Created by Admin on 5/21/20.
//  Copyright © 2020 ArsTropica LLC. All rights reserved.
//

import UIKit

extension UIApplication {
    static var mediaPlaylistUrl: String {
        return Bundle.main.object(forInfoDictionaryKey: "MediaPlaylistUrl") as! String
    }
}
