//
//  ContentView.swift
//  PizzaAsyncImage
//
//  Created by Steven Lipton on 8/3/21.
//

import SwiftUI

struct ContentView: View {
    var menu = MenuModel().menu
    
    var body: some View {
        VStack {
            Text("Huli Pizza Company")
                .font(.title)
                .padding()
            List{
                ForEach(menu){item in
                    Text(item.name)
                    ErrorRowView(item: item)
                }
            }
            .listStyle(.plain)
            .background(Color.green)
         Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//            { phase in
//                if let image = phase.image{
//                    image
//                    .resizable().scaledToFit()
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//                } else if phase.error == nil{
//                    ZStack {
//                        Image(systemName: "photo")
//                            .resizable().scaledToFit()
//                        ProgressView()
//
//                    }
//
//                } else {
//                    VStack {
//                        Image(systemName: "xmark.rectangle")
//                                       .resizable()
//                                   .scaledToFit()
//                        Text(phase.error!.localizedDescription)
//                    }
//                }
//            }
