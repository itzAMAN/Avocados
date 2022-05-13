//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by AMAN SHARMA on 12/05/22.
//

import SwiftUI

struct RipeningStagesView: View {
  // MARK: - PROPERTIES
  
  var ripeningStages: [Ripening] = ripeningData
  
  // MARK: - BODY
    var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
        VStack {
          Spacer()
          HStack (alignment: .center, spacing: 25) {
            ForEach(ripeningStages) { item in
              RipeningView(ripening: item)
            } //: LOOP
          } //: HSTACK
          .padding(.vertical)
          .padding(.horizontal, 25)
          Spacer()
        } //: VSTACK
      } //: SCROLL
      .edgesIgnoringSafeArea(.all)
    }
}
  // MARK: - PREVIEW
struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
