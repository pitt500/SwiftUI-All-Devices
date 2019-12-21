//
//  SwiftUIView.swift
//  SwiftUI-AllDevices
//
//  Created by projas on 12/21/19.
//  Copyright © 2019 projas. All rights reserved.
//

import SwiftUI

struct SharedDetailView: View {
  
  let animal: Animal
  
  var body: some View {
    VStack {
      Text(animal.image)
        .font(.custom("Arial", size: 100))
      Text(animal.name)
      Text(animal.description)
    }
  }
}

struct SharedDetailView_Previews: PreviewProvider {
  static var previews: some View {
    SharedDetailView(animal: Animal.placeholder)
  }
}
