//
//  Modo2.swift
//  Desafio_04
//
//  Created by Turma02-9 on 21/03/25.
//


import Foundation

import SwiftUI

struct Modo2: View {
    
    @State var nameComplete: String = "teste"
    
    
    var body: some View {
        
        ZStack{
            Color.blackPurple
                .opacity(0.8)
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack{
                Text("Modo 2")
                    .font(.title)
                    .padding(.top, 20)
                    
                Spacer()
                
                ZStack{
                    Rectangle()
                        .frame(width: 230, height: 150)

                    VStack{
                        TextField("Entre com seu nome", text: $nameComplete)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                        
                        Text("Bem vindo, \(nameComplete)")
                            .foregroundStyle(.white)
   
                        
                        
                        NavigationLink(destination: Modo2_2(nameComplete: nameComplete)){
                            Text("Acessar a tela")
                        }
                        .frame(width: 200, height: 50)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(20)


                    }

                }
                .foregroundColor(.pink)
                
                Spacer()
            }

        }
    }
}

#Preview(){
    Modo2()
}
