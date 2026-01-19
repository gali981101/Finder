//
//  TitleModifier.swift
//  Finder
//
//  Created by Terry Jason on 2026/1/20.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}
