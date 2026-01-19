//
//  CardView.swift
//  Finder
//
//  Created by Terry Jason on 2026/1/20.
//

import SwiftUI

struct CardView: View, Identifiable {
    
    let id = UUID()
    var girl: Girl
    
    var body: some View {
        Image(girl.image)
            .resizable()
            .scaledToFill()
            .frame(width: 375, height: 600)
            .cornerRadius(24)
            .clipped() 
            .overlay(
                VStack(alignment: .center, spacing: 12) {
                    Text(girl.name.uppercased())
                        .foregroundColor(Color.pink)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(radius: 1)
                        .padding(.horizontal, 18)
                        .padding(.vertical, 4)
                        .overlay(
                            Rectangle()
                                .fill(Color.pink)
                                .frame(height: 1),
                            alignment: .bottom
                        )
                    Text(girl.country.uppercased())
                        .foregroundColor(Color.white)
                        .font(.body)
                        .fontWeight(.bold)
                        .frame(minWidth: 85)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(
                            Capsule().fill(Color.black)
                        )
                }
                .frame(minWidth: 280)
                .padding(.bottom, 50),
                alignment: .bottom
            )
    }
}

#Preview {
    CardView(girl: girlData[0])
}
