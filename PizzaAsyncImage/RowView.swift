//
//  RowView.swift
//  PizzaAsyncImage
//
//  Created by Steven Lipton on 8/3/21.
//

import SwiftUI

struct RowView: View {
    
    func pizzaUrl(id:Int)-> String{
        return "https://apppie.files.wordpress.com/2020/05/\(id)_250w403x.jpg"
    }
    
    var item:MenuItem
    var body: some View {
        VStack{
            AsyncImage(url:URL(string:pizzaUrl(id:item.id))){ image in
                image.resizable().scaledToFit()
            }
        placeholder: {
            LoadingImageView()
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

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(item: testMenuItem )
    }
}
