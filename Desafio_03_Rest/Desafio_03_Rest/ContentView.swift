//
//  ContentView.swift
//  Desafio_03_Rest
//
//  Created by Turma02-9 on 26/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
        
    
    var body: some View {
        NavigationView{
                    ZStack {
                        Color.redFundo
                            .opacity(0.8)
                            .ignoresSafeArea()
                        
                        ScrollView(.vertical){
                        
                        VStack {
                            
                            ZStack {
                                Image("FundoGrifinoria")
                                    .resizable()
                                    .frame(width: .infinity)
                                    .ignoresSafeArea()
                                    .scaledToFill()
                                
                           VStack{
                                    Image("grifinoria")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                    
                                    Text("Grifinoria")
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                }
                            }
                            
                            ZStack {
                                
                                VStack {
                                    ForEach(viewModel.Personagens){ perso in
                                        NavigationLink(destination: PersonagemDetalhes(Perso: perso)){
                                            PersonagemView(image: perso.image ?? "Desconhecido", name: perso.name ?? "Desconhecido")
                                        }
                                        
                                    }
                                }
                            }
                            .padding(.top, 10)
                        }
                        .onAppear(){ //ao aparecer chama o fetch
                            viewModel.fetch()
                        }
                    }
                }.ignoresSafeArea()
            }
    }
}

#Preview {
    ContentView()
}
