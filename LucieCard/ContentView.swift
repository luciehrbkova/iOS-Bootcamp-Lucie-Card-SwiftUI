//
//  ContentView.swift
//  LucieCard
//
//  Created by Lucie Hrbkova on 07/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.systemYellow)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("lucie")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 300, height: 300, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("LUCIE HRBKOVA")
//                    .font(.system(size: 40))
                    .font(.custom("Optima", size: 38))
                    .fontWeight(.black)
                    .foregroundColor(.indigo)
                    .padding(.init(top: 0, leading: 0, bottom: 10, trailing: 0))
                Text("iOS Developer")
                    .foregroundColor(.init(red: 0.21, green: 0.23, blue: 0.28))
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+44 794979 20421", imageName: "phone.fill")
                InfoView(text: "hrbkova.lucka@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
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
