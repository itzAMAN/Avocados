//
//  FactsModel.swift
//  Avocados
//
//  Created by AMAN SHARMA on 12/05/22.
//

import SwiftUI

// MARK: - FACT MODEL

struct Fact: Identifiable {
  
  var id = UUID()
  var image: String
  var content: String
}
