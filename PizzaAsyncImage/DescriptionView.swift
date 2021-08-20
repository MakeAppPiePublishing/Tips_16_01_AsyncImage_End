//
//  DescriptionView.swift
//  DescriptionView
//
//  Created by Steven Lipton on 8/3/21.
//

import SwiftUI

struct DescriptionView: View {
    var item:MenuItem
    var body: some View {
        HStack {
            VStack(alignment:.leading){
                Text(item.name)
                    .font(.headline)
                Text(item.description)
                    .font(.caption)
            }
            .padding()
       
            Spacer()
        }
        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(item:testMenuItem)
    }
}
