//
//  ContentView.swift
//  Desafio_01
//
//  Created by Turma02-9 on 24/03/25.
//

struct Song: Identifiable{
    let id:Int
    let name: String
    let artist: String
    let capa: String
}

import SwiftUI

var Songs: [Song] = [
    Song(id: 1, name: "Colosenses e suas linhas de amor" , artist: "Marco Talles", capa: "https://i.scdn.co/image/ab67616d00001e021042794596e511155dd18029"),
    Song(id: 2, name: "Fogo em teu olhos" , artist: "Rafael Faleiro", capa: "https://i.scdn.co/image/ab67616d0000b2730efc842a2f29e749d2e2b7b3"),
    Song(id: 3, name: "O escudo" , artist: "Voz da verdade", capa: "https://i.scdn.co/image/ab67616d0000b2732646cc1befd6e146b825b4de"),
    Song(id: 4, name: "Arde outra vez" , artist: "Talles Roberto", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlPisI-REbWCAVSkJsrDlBRs5G-i26pHGpqQ&s"),
]

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.green, Color.black]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack{
                    Image("capa")
                        .resizable()
                        .frame(width: 200 ,height: 200)
                        .padding(.bottom, 20)
                    
                    HStack  {
                        Text("FilhosFM")
                            .bold()
                            .font(.title)
                            .foregroundStyle(Color.white)
                            .padding(.horizontal, 20)
                            .frame(maxWidth: .infinity ,alignment: .leading)
                    }
                    
                    HStack{
                        Image("capa")
                            .resizable()
                            .frame(width: 30 ,height: 30)
                            .padding(.leading, 10)
                        
                        HStack(content: {
                            Text("Os filhos do pai")
                                .bold()
                                .font(.callout)
                                .multilineTextAlignment(.leading)
                                .foregroundStyle(Color.white)
                        })
                    }
                    .padding(.bottom, 20)
                    .frame(maxWidth: .infinity ,alignment: .leading)
                    
                    ForEach(Songs){ s in
                        MusicList(image: s.capa, title: s.name, description: s.artist)
                            .padding(.bottom, 10)
                    }
                    
                    
                    Sugeridos(sugeridos: Songs)
                }
                
            }
            
        }.tint(.white)
    }
}

#Preview {
    ContentView()
}
