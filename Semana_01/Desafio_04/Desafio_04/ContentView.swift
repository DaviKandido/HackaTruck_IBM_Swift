//
//  ContentView.swift
//  Desafio_04
//
//  Created by Turma02-9 on 21/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var name:String = "Davi"
    @State var sobrenome:String = "Cändido"
    
    @State var mostraSheet: Bool = false;
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.blackPurple
                    .opacity(0.8)
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack{
                    Image("logo-hackatruck")
                        .resizable()
                        .frame(width: 300, height: 100)
                        .padding(.horizontal, 80)
                        .padding(.vertical, 20)
                    Spacer()
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 230, height: 100)

                        NavigationLink(destination: Modo1(name: $name, sobrenome: $sobrenome)){
                            Text("Modo 1")
                        }
                        .foregroundColor(.white)

                    }
                    .foregroundColor(.pink)
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 230, height: 100)

                        NavigationLink(destination: Modo2(nameComplete: name)){
                            Text("Modo 2")
                        }
                        .foregroundColor(.white)
                    }
                    .foregroundColor(.pink)
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 230, height: 100)

                        Button("Modo 3"){
                            mostraSheet.toggle()
                        }
                        .foregroundStyle(.white)
                        .sheet(isPresented: $mostraSheet, content: {
                            Sheet(name: name, sobrenome: sobrenome)
                        })
                        .cornerRadius(50)
                        
                        
                        
                        
                    }
                    .foregroundColor(.pink)
                    
                    Spacer()
                }
            
            }
        }
    }
}

#Preview {
    ContentView()
}
