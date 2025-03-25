//
//  musicList.swift
//  Desafio_01
//
//  Created by Turma02-9 on 24/03/25.
//

import Foundation
import SwiftUI

struct MusicList: View{
    
    @State var image: String
    @State var title: String
    @State var description: String
    
    var body: some View{
        NavigationStack{
            NavigationLink(destination:
                MusicPlay(image: image, title: title, description: description))
            {
                HStack{
                    Group{
                        
                        AsyncImage(url: URL(string: image)){ image in
                            image
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding(.leading, 10)
                        } placeholder: {
                            Color.red
                                .frame(width: 128, height: 128)
                                .clipShape(.rect(cornerRadius: 25))
                        }
                        
                        
                        VStack {
                            Text(title)
                                .bold()
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity ,alignment: .leading)
                            Text(description)
                                .font(.callout)
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity ,alignment: .leading)
                        }
                        .padding(.leading, 5)
                    }
                    
                    Spacer()
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                        .padding(.trailing, 20)
                        .foregroundColor(Color.white)
                    
                }
            }
        }.tint(.white)
    }
}


#Preview(){
    MusicList(
        image: "https://i.scdn.co/image/ab67616d0000b2730efc842a2f29e749d2e2b7b3",
        title: "teste",
        description: "teste")
}
