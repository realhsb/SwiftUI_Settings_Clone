//
//  ItemRowView.swift
//  Settings
//
//  Created by Subeen on 12/29/24.
//

import SwiftUI

struct ItemRowView: View {

    // MARK: - Properties
    
    let item: Item

    var body: some View {
        HStack(spacing: 15) {
            ZStack {
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(UIColor.colorWith(name: item.color.rawValue)!))
                Image(systemName: item.image)
                    .foregroundColor(.white)
            }

            Text(item.title)
        }
    }
}

struct ItemRowView_Previews: PreviewProvider {

    static var previews: some View {
        ItemRowView(item: Item(image: "phone.fill", color: .systemGreen, title: "Phone", section: .preInstalled))
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
        ItemRowView(item: Item(image: "gear", color: .systemGray, title: "General", section: .preference))
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.light)
    }
}


