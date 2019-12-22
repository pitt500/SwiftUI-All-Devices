//
//  ContentView.swift
//  SwiftUI-AllDevices-MacOS
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
        .font(.custom("Arial", size: 200))
      Text(animal.name)
      Text(animal.description)
    }
  }
}

struct AnimalList: View {
  private let animals = AnimalService.getAll()
  @Binding var selectedAnimal: Animal?
  
  var body: some View {
    List(self.animals, id: \.name) { animal in
      VStack {
        Text(animal.image)
          .font(.custom("Arial", size: 100))
        Text(animal.name)
      }.onTapGesture {
        self.selectedAnimal = animal
      }
    }
  }
}

struct ContentView: View {
  
  @State private var selectedAnimal: Animal? = nil
  
  var body: some View {
    NavigationView {
      
      HStack {
        AnimalList(selectedAnimal: self.$selectedAnimal)
        DetailView(animal: self.selectedAnimal ?? Animal.placeholder)
        .frame(maxWidth: 200)
      }
      
      
    }
    .navigationViewStyle(DoubleColumnNavigationViewStyle())
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
