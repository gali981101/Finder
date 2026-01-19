//
//  InfoView.swift
//  Finder
//
//  Created by Terry Jason on 2026/1/20.
//

import SwiftUI

struct InfoView: View {
   
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("應用程式")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                AppInfoView()
                
                Spacer(minLength: 10)
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("繼續".uppercased())
                        .modifier(ButtonModifier())
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

struct AppInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            RowAppInfoView(ItemOne: "應用軟體", ItemTwo: "Finder")
            RowAppInfoView(ItemOne: "平台", ItemTwo: "iPhone and iPad")
            RowAppInfoView(ItemOne: "開發者", ItemTwo: "Gali Lee")
            RowAppInfoView(ItemOne: "設計師", ItemTwo: "Gali Lee")
            RowAppInfoView(ItemOne: "網站", ItemTwo: "https://github.com/gali981101")
            RowAppInfoView(ItemOne: "版本", ItemTwo: "1.0.1")
        }
    }
}

struct RowAppInfoView: View {
    
    var ItemOne: String
    var ItemTwo: String
    
    var body: some View {
        VStack {
            HStack {
                Text(ItemOne).foregroundColor(Color.gray)
                Spacer()
                Text(ItemTwo)
            }
            Divider()
        }
    }
}
