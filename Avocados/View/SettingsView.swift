//
//  SettingsView.swift
//  Avocados
//
//  Created by AMAN SHARMA on 12/05/22.
//

import SwiftUI

struct SettingsView: View {
  // MARK: - PROPERTIES
  
  @State private var enableNotifications: Bool = true
  @State private var backgroundRefresh: Bool = false
  
  // MARK: - BODY
    var body: some View {
      VStack (alignment: .center, spacing: 0) {
        VStack(alignment: .center, spacing: 5) {
          Image("avocado")
            .resizable()
            .scaledToFit()
            .padding(.top)
            .frame(width: 100, height: 100, alignment: .center)
            .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
          
          
          Text("Avocados".uppercased())
            .font(.system(.title, design: .serif))
            .fontWeight(.bold)
          .foregroundColor(Color("ColorGreenAdaptive"))
        } //: VSTACK
        .padding()
        
        Form {
          // SECTION #1
          Section(header: Text("General Settings")) {
            
            Toggle(isOn: $enableNotifications) {
              Text("Enable Notifications")
            }
            
            Toggle(isOn: $backgroundRefresh) {
              Text("Backgrund Refresh")
            }
          }
          
          // SECTION #2
          Section(header: Text("Application")) {
            
            if enableNotifications {
              
              HStack {
                Text("Product").foregroundColor(Color.gray)
                Spacer()
                Text("Avocado Recipes")
              }
              
              HStack {
                Text("Compatibility").foregroundColor(Color.gray)
                Spacer()
                Text("iPhone & iPad")
              }
              
              HStack {
                Text("Developer").foregroundColor(Color.gray)
                Spacer()
                Text("Dork / Dorky")
              }
              
              HStack {
                Text("Designer").foregroundColor(Color.gray)
                Spacer()
                Text("Aman Sharma")
              }
              
              HStack {
                Text("Website").foregroundColor(Color.gray)
                Spacer()
                Text("twitter.com/itzAMANSHARMA")
              }
              
              
              HStack {
                Text("Version").foregroundColor(Color.gray)
                Spacer()
                Text("1.0.0")
              }

            } else {
              HStack {
                Text("Personal Message")
                  .foregroundColor(Color.gray)
                Spacer()
                Text("Happy Coding!")
              }
            }
            
          }
        } //: FORM
      } //: VSTACK
      .frame(maxWidth: 640)
    }
}
  // MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
