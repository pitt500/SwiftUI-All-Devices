//
//  DetailView.swift
//  SwiftUI-AllDevices-WatchOS Extension
//
//  Created by projas on 12/21/19.
//  Copyright © 2019 projas. All rights reserved.
//

import SwiftUI

struct DetailView: View {
  
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

struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(animal: Animal(name: "Cat", description: "This is a cat", image: "🐈") )
  }
}
