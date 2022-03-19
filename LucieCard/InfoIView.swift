//
//  InfoIView.swift
//  LucieCard
//
//  Created by Lucie Hrbkova on 07/02/2022.
//

import SwiftUI

//DELETE THE ORIGINAL ONE!!!!!!!!
//struct InfoIView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}

//PASTE THE NEW STRUCTURE !!!!!!!!!!!!!!!
struct InfoIView: View {
    //let's create some variables
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50, alignment: .center)
            .padding()
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.indigo)
                Text(text)
            })
    }
}

struct InfoIView_Previews: PreviewProvider {
    static var previews: some View {
        InfoIView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
