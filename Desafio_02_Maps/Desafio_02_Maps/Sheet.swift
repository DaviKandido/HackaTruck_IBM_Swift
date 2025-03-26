//
//  Sheet.swift
//  Desafio_02_Maps
//
//  Created by Turma02-9 on 25/03/25.
//

import Foundation

import SwiftUI

struct Sheet: View {
    
    @State var locationVar: Location

    var body: some View {
        
        ZStack{
            Color.blackYellow
                .opacity(0.8)
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack{
                Spacer()
                ZStack{
                    Rectangle()
                        .frame(width: 330, height: 200)
                        .foregroundColor(.blackYellow)
                        .border(Color.black)
                    
                    Image(locationVar.foto)
                }
                
                
                Text(locationVar.nome)
                    .foregroundStyle(.brown)
                    .font(.title)
                    .bold()
                    .padding(.top, 20)
                    
                Spacer()
                
                ZStack{
                    Rectangle()
                        .frame(maxHeight: 300)
                        .frame(width: 300)
                        .background(Color.brown)

                    VStack{
                
                        Text(locationVar.descricao)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: 300)
                            .foregroundStyle(.white)

                    }
                    
                }
                .foregroundColor(.brown)
                
                Spacer()
            }

        }
    }
}



#Preview(){
    Sheet(locationVar: Location(
        nome: "Lagoa Paulina",
        foto: "lagoa_paulina",
        descricao: "A Lagoa Paulina é uma das mais conhecidas da cidade, com ótima estrutura para lazer.",
        latitude: -19.1989,
        longitude: -44.2555
    ))
}
