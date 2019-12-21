//
//  ContentView.swift
//  SwiftUI-AllDevices-WatchOS Extension
//
//  Created by projas on 12/21/19.
//  Copyright © 2019 projas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  private let animals = AnimalService.getAll()
  
  var body: some View {
    List(self.animals, id: \.name) { animal in
      NavigationLink(destination: DetailView(animal: animal)) {
        AnimalCell(animal: animal)
      }
    }.listStyle(CarouselListStyle())
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct AnimalCell: View {
  let animal: Animal
  
  var body: some View {
    VStack(alignment: .center) {
      Text(animal.image)
        .font(.custom("Arial", size: 100))
      Text(animal.name).padding()
    }.frame(minWidth: 0, maxWidth: .infinity)
  }
}
