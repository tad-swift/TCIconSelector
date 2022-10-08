//
//  ListSelectorView.swift
//  TC Icon Selector
//
//  Created by Tadreik Campbell on 10/7/22.
//

import SwiftUI

public struct ListSelectorView: View {
    
    var title: String
    var icons: [Icon]
    
    init(title: String, icons: [Icon]) {
        self.title = title
        self.icons = icons
    }
    
    public var body: some View {
        List(icons, id: \.id) { icon in
            HStack {
                Image(icon.image)
                    .resizable()
                    .frame(width: 100, height: 100)
                Text(icon.name)
            }
        }
    }
}
