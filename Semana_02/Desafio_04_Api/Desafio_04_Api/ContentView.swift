//
//  ContentView.swift
//  Desafio_04_Api
//
//  Created by Turma02-9 on 27/03/25.
//

struct globalString {
    static var stringy = ""
}

import SwiftUI

struct ContentView: View {
    
    
    @State var nome: String = ""
    @State var time: String = ""
    
    @State var showAlert = false;
    @State var alertMsg: String = ""
    
    @StateObject var viewModel = ViewModel()
    
    
    func submitTorcedor(){
        guard !nome.isEmpty, !time.isEmpty else {
            alertMsg = "Insira dados para cadastrar"
            showAlert = true
            return
        }
               
        let torcedorData = TorcedorPost(nome: nome, time: time)
        post(torcedorPost: [torcedorData])
        viewModel.fetch()
    }
    
    var body: some View {
            
            ZStack {
                
                VStack{
                    LinearGradient(gradient: Gradient(colors: [.white, .red]), startPoint: .top, endPoint: .bottom)
                }
                .ignoresSafeArea()

                    
                ScrollView(.vertical){
                
                    VStack {
                        Image("Democrata")
                            .frame(width: 200 ,height: 200)
                            .clipShape(Circle())
                            .padding(.bottom, 20)
                            .padding(.top, 80)
                        
                        Group {
                            Section(header: Text("Cadastro torcedor")){
                                TextField("Digite seu nome", text: $nome)
                                    .padding(4)
                                    .padding(.horizontal, 40)
                                    .border(Color.black)
                                    .cornerRadius(10)
                                    .multilineTextAlignment(.center)
                                
                                TextField("Digite seu time", text: $time)
                                    .padding(4)
                                    .border(Color.black)
                                    .cornerRadius(10)
                                    .multilineTextAlignment(.center)
                                
                                }
                                
                                Button("Cadastrar Torcedor"){
                                    submitTorcedor()
                                    nome = ""
                                    time = ""
                                }
                                .frame(width: 200,height: 40)
                                .background(Color.red)
                                .border(Color.black)
                                .foregroundColor(.white)
                                .bold()
                                .cornerRadius(10)
                                .padding(.top, 10)
                                .alert(isPresented: $showAlert){
                                    Alert(title: Text("Feedback"), message: Text(alertMsg), dismissButton: .default(Text("OK")))
                                }
                            
                                }
                                .navigationTitle("Feedback")
                               
                        
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
                                        .font(.title)
                                        .padding(20)
                                    
                                    ScrollView(.vertical){
                                        
                                        ForEach(viewModel.Torcedores, id: \._id){ torcedor in
                                            TorcedorView(torcedor: torcedor)
                                                .padding(.horizontal, 20)
                                        }
                                        .padding(.bottom, 20)
                                        
                                    }
                                }
                                .frame(minHeight: 100, maxHeight: 300)
                                .padding(.bottom, 20)
                                
                                
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
