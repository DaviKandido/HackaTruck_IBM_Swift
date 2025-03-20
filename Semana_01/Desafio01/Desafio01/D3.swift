//
//  D3.swift
//  Desafio01
//
//  Created by Turma02-9 on 19/03/25.
//



import SwiftUI

struct D3: View {
    @State private var nome: String = "";

    var body: some View {
        
        ZStack{
            Image("pacheco")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .frame(width: 400)
                    .opacity(0.3)
            
                    VStack{
                        Image("Drogarias-Pacheco")
                                .resizable()
                                .imageScale(.large)
                                .scaledToFit()
                                .frame(width: 250, height: 250)
                                .zIndex(1)
            
                    }
            
            VStack {
                VStack{
                    Text("Bem vindo, " + nome)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    TextField(
                        "Digite seu nome",
                        text: $nome
                    )
                    .padding()
                }
                Spacer()
                
                Button(action: { }){
                    Text("Entrar")
                }
                .padding()
            }
            
        }
        
    }
}

#Preview {
    D3()
}


//VStack{

//    

//    
//    ZStack{
//
//        

//
//      
//        HStack(alignment: .bottom){
//            Button("Entrar") {
//            }
//            .padding()
//        }.zIndex(1)
//        
//        
//    }
