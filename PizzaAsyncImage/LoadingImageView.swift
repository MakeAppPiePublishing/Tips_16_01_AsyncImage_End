//
//  loadingImageView.swift
//  PizzaAsyncImage
//
//  Created by Steven Lipton on 8/6/21.
//

import SwiftUI

struct LoadingImageView: View {
    var body: some View {
        ZStack {
            Image(systemName: "photo")
            .resizable().scaledToFit()
            ProgressView()
        }
       
    }
}

struct LoadingImageView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingImageView()
    }
}
