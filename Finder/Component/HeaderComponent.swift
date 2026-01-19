//
//  HeaderComponent.swift
//  Finder
//
//  Created by Terry Jason on 2026/1/20.
//

import SwiftUI

struct HeaderComponent: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Capsule()
                .frame(width: 120, height: 6)
                .foregroundColor(Color.pink)
            
            Text("Finder")
                .font(.system(size: 28, weight: .semibold, design: .default))
                .foregroundColor(Color(.pink))
                .tracking(0.5)
        }
    }
}

#Preview {
    HeaderComponent()
}
