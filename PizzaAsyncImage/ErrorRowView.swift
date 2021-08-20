//
//  ErrorRowView.swift
//  PizzaAsyncImage
//
//  Created by Steven Lipton on 8/6/21.
//

import SwiftUI

struct ErrorRowView: View {
    func pizzaUrl(id:Int)-> String{
        return "https://apppie.files.wordpress.com/2020/05/\(id)_250w403x.jpg"
    }
    
    var item:MenuItem
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: pizzaUrl(id:item.id))){ phase in
                if let image = phase.image{
                    image.resizable().scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                else if phase.error != nil {
                    ErrorImageView(phase:phase)
                }
                else {
                    LoadingImageView()
                }
            }
            VStack{
                Spacer()
                DescriptionView(item: item)
                    .padding(3)
            }
        }
        .frame(height:250)

    
    
    }
    
}

struct ErrorRowView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorRowView(item: testMenuItem)
    }
}
