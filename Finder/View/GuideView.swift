//
//  GuideView.swift
//  Finder
//
//  Created by Terry Jason on 2026/1/20.
//

import SwiftUI

struct GuideView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("開始沉淪")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                Text("找到那個，在我面前，心與腎都守不住的人")
                    .fontWeight(.bold)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                
                VStack(alignment: .leading, spacing: 25) {
                    GuideComponent(
                        title: "喜歡",
                        subtitle: "向右滑",
                        description: "對這個人有好感嗎？點擊螢幕並向右滑。TA 會被加入你的喜歡清單。",
                        icon: "heart.circle"
                    )
                    
                    GuideComponent(
                        title: "不喜歡",
                        subtitle: "向左滑",
                        description: "不想認識這個人嗎？點擊螢幕並向左滑。TA 將不再出現在你的推薦中。",
                        icon: "xmark.circle"
                    )
                    
                    GuideComponent(
                        title: "超級喜歡",
                        subtitle: "點擊星星",
                        description: "特別喜歡這個人嗎？點擊螢幕上的星星，讓 TA 立刻知道你的心意！",
                        icon: "star.circle"
                    )
                }
                
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

#Preview {
    GuideView()
}
