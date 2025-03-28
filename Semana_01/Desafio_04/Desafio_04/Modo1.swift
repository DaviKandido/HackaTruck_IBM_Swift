//
//  Modo1.swift
//  Desafio_04
//
//  Created by Turma02-9 on 21/03/25.
//

import Foundation

import SwiftUI

struct Modo1: View {
    
    @Binding var name: String
    
    @Binding var sobrenome: String
    
    var body: some View {
        
        ZStack{
            Color.blackPurple
                .opacity(0.8)
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack{
                Text("Modo 1")
                    .font(.title)
                    .padding(.top, 20)
                    
                Spacer()
                
                ZStack{
                    Rectangle()
                        .frame(width: 230, height: 100)

                    VStack{
                        Text("Nome: \(name)")
                            .foregroundStyle(.white)
                        
                        Text("Sobrenome: \(sobrenome)")
                            .foregroundStyle(.white)
                    }

                }
                .foregroundColor(.pink)
                
                Spacer()
            }

        }
    }
}

//#Preview(){
//    Modo1()
//}
