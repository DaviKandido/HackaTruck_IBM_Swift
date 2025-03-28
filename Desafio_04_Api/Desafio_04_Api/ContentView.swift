//
//  ContentView.swift
//  Desafio_04_Api
//
//  Created by Turma02-9 on 27/03/25.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var nome: String = ""
    @State var time: String = ""
    
    @StateObject var viewModel = ViewModel()

    
    var body: some View {
            
            ZStack {
                
                VStack{
                    LinearGradient(gradient: Gradient(colors: [.white, .red]), startPoint: .top, endPoint: .bottom)
                }
                .ignoresSafeArea()

                    
                ScrollView(.vertical){
                
                    VStack {
                        Group{
                            Image("Democrata")
                                .frame(width: 200 ,height: 200)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .padding(.bottom, 20)
                                .padding(.top, 80)
                            
                            TextField("Digite seu nome",
                                      text: $nome
                            )
                            .padding(4)
                            .padding(.horizontal, 40)
                            .cornerRadius(10)
                            .multilineTextAlignment(.center)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                            
                            TextField("Digite seu time",
                                      text: $nome
                            )
                            .padding(4)
                            .cornerRadius(10)
                            .multilineTextAlignment(.center)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                            
                            Button("Cadastrar Torcedor"){
                                
                            }
                            .frame(width: 200,height: 40)
                            .background(Color.red)
                            .border(Color.black)
                            .foregroundColor(.white)
                            .bold()
                            .cornerRadius(10)
                            .padding(.top, 10)
                        }
                        
                        Spacer()
                        
                        Group{
                            ZStack{
                                Rectangle()
                                    .frame(minHeight: 100)
                                    .foregroundColor(Color.white)
                                    .border(Color.black, width: 2)
                                    .cornerRadius(20)
                                    

                                
                                VStack {
                                    Text("Torcedores: ")
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .padding(20)
                                    
                                    
                                    ForEach(viewModel.Torcedores, id: \._id){ torcedor in
                                        TorcedorView(torcedor: torcedor)
                                            .padding(.horizontal, 20)
                                    }
                                    .padding(.bottom, 20)
                                }
                            }
        
                        }
                        .padding(.top, 40)
                        Spacer()
                    }
                    .padding(.horizontal, 40)
                }
                .onAppear(){
                    viewModel.fetch()
                }
        }.ignoresSafeArea()
        
    }
}

#Preview {
    ContentView()
}
