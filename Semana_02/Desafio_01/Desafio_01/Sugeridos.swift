//
//  Sugeridos.swift
//  Desafio_01
//
//  Created by Turma02-9 on 24/03/25.
//



import Foundation
import SwiftUI


struct Sugeridos: View {
    
    @State var sugeridos: [Song]
    @State var cont: Int = 0;
    
    var body: some View {
        
        ScrollView(.horizontal){
            Section(header: Text("Sugeridos")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .bold()
                .font(.title3)
                .foregroundStyle(.white)
                .padding(.leading, 20)
            ){
                HStack{
                    ForEach(sugeridos) { sugerido in
                        VStack{
                            AsyncImage(url: URL(string: sugerido.capa)){ image in
                                image
                                    .resizable()
                                    .frame(width: 200, height: 200)
                                    .padding(.leading, 10)
                            } placeholder: {
                                Color.red
                                    .frame(width: 128, height: 128)
                                    .clipShape(.rect(cornerRadius: 25))
                            }
                            Text(sugerido.name)
                                .foregroundStyle(.white)
                        }
                    }
                }
            }

        }.padding(20)

    }
}

#Preview {
    Sugeridos(sugeridos: Songs)
}
