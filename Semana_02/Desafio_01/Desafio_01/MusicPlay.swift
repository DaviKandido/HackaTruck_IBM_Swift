//
//  MusicPlay.swift
//  Desafio_01
//
//  Created by Turma02-9 on 24/03/25.
//

import Foundation
import SwiftUI

struct MusicPlay: View{
    
    @State var image: String
    @State var title: String
    @State var description: String
    
    var body: some View{
        
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.green, Color.black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            
            VStack{
                AsyncImage(url: URL(string: image)){ image in
                    image
                        .resizable()
                        .padding(.leading, 10)
                } placeholder: {
                    Color.red
                }
                .frame(width: 200, height: 200)
                .clipShape(.rect(cornerRadius: 25))
                
                Text(title)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundStyle(.white)
                Text(description)
                    .font(.headline)
                    .bold()
                    .foregroundStyle(.white)
                
                HStack{
                    Spacer()
                    Image(systemName: "shuffle")
                    Spacer()
                    Image(systemName: "backward.end.fill")
                    Spacer()
                    Image(systemName: "play.fill")
                        .frame(width: 5)
                    Spacer()
                    Image(systemName: "forward.end.fill")
                    Spacer()
                    Image(systemName: "repeat")
                    Spacer()
                }
                
                .foregroundColor(.white)
                .padding(.top, 30)
            }
            

        }
    }
}


#Preview(){
    MusicPlay(
        image: "https://i.scdn.co/image/ab67616d0000b2730efc842a2f29e749d2e2b7b3",
        title: "teste",
        description: "teste")
}

