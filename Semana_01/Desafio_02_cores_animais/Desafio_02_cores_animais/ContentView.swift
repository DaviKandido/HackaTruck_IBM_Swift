//
//  ContentView.swift
//  Desafio_02_cores_animais
//
//  Created by Turma02-9 on 20/03/25.
//

import SwiftUI


struct ContentView: View {
    
    @State private var distancia: Double = 0.0;
    @State private var tempo: Double = 0.0;
    
    @State private var velocidade: Double = 0.0;
    
    @State private var corFundo: Color = .gray;
    @State private var imgFundo: String = "Pergunta";
    
    func calcular(){
        velocidade = distancia / tempo * 1.0
        
        if( velocidade > 10000000){
            velocidade = 0
        }
    }
    
    struct nave: Hashable{
        var text: String
        var color: Color
    }
    
    var naves = [
        nave(text: "Cargueiro Classe Nebula (0-9.9 km/h)", color: .green),
        nave(text: "Belonave (10-29.9 km/h)", color: .blue),
        nave(text: "Interceptador (30-69.9 km/h)", color: .brown),
        nave(text: "Nave de assalto (70-89.9 km/h)", color: .yellow),
        nave(text:"millennium falcon (90 - 130 km/h", color: .red)
    ]
    
    func atualizaCor(){
            if (velocidade >= 0.0 && velocidade < 10){
                corFundo = .green
            }
            else if (velocidade >= 10 && velocidade < 30){
                corFundo = .blue
            }
            else if (velocidade >= 30 && velocidade < 70){
                corFundo = .brown
            }
            else if (velocidade >= 70 && velocidade < 90){
                corFundo =  .yellow
            }
            else if (velocidade >= 90 && velocidade < 130){
                corFundo = .red
            } else{
                corFundo = .gray
            }
    }
    
    func atualizaImagem(){
        if (velocidade > 0.0 && velocidade < 10){
            imgFundo = "Cargueiro"
        }
        else if (velocidade > 10 && velocidade < 30){
            imgFundo = "Belonave"
        }
        else if (velocidade > 30 && velocidade < 70){
            imgFundo = "Interceptador"
        }
        else if (velocidade > 70 && velocidade < 90){
            imgFundo =  "Assalto"
        }
        else if (velocidade > 90 && velocidade < 130){
            imgFundo = "Falcon"
        } else{
            imgFundo = "Pergunta"
        }
    }
    
    var body: some View {
        ZStack{
            
            Rectangle()
                .foregroundColor(corFundo)
                .ignoresSafeArea()
            
            VStack {
                Text("Digite a distancia (km)")
                TextField("Entre com um valor", value: $distancia, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.white.opacity(0.3))
                    .cornerRadius(10)
                
                Text("Digite o tempo (h)")
                TextField("Entre com um valor", value: $tempo, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.white.opacity(0.2))
                    .cornerRadius(10)
                
                Spacer()
                
                Button("Calcular") {
                    calcular()
                    atualizaCor()
                    atualizaImagem()
                }
                .padding(15)
                .background(Color.black)
                .cornerRadius(10)
                
                Spacer()
                
                
                Text("\(String(format: "%.2f", velocidade)) km/h")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                
                Spacer()
                
                
                Image(imgFundo)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                VStack{
                    Group{
                        ForEach(naves, id: \.self) { nave in
                            HStack{
                                Group{
                                    Text(nave.text)
                                        .font(.footnote)
                                        .foregroundColor(nave.color)
                                        .padding(.leading, 20)
                                        
                                    Spacer()
                                    Circle()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(nave.color)
                                        .padding(.trailing, 20)
                                }
                            }
                        }

                    }
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 20)
                .background(Color.black)
                .cornerRadius(15)
                
                
            }
            .padding()
         }
    }
        

}

#Preview {
    ContentView()
}
