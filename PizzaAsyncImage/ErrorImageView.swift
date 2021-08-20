//
//  ErrorImageView.swift
//  PizzaAsyncImage
//
//  Created by Steven Lipton on 8/6/21.
//

import SwiftUI

struct ErrorImageView: View {
    var phase: AsyncImagePhase
    var body: some View {
        VStack {
            Image(systemName: "xmark.rectangle")
                .resizable().scaledToFit()
            Text(phase.error!.localizedDescription)
        }
    }
}

//struct ErrorImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        ErrorImageView(phase: .error))
//    }
//}
