//
//  Animal.swift
//  SwiftUI-AllDevices
//
//  Created by projas on 12/21/19.
//  Copyright © 2019 projas. All rights reserved.
//

import Foundation

struct Animal: Hashable {
  let name: String
  let description: String
  let image: String
}

extension Animal {
  static var placeholder: Animal {
    return Animal(name: "", description: "", image: "")
  }
}
