//
//  D2.swift
//  Desafio01
//
//  Created by Turma02-9 on 19/03/25.
//


import SwiftUI

struct D2: View {
    var body: some View {
            HStack{
                Spacer()
                Image("Davi_perfil")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .border(Color.red, width: 2)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Spacer()
                VStack{
                    Text("Davi Candido")
                        .font(.title2)
                        .foregroundStyle(.red)
                    Text("Programador Full Stack")
                        .font(.subheadline)
                        .foregroundStyle(.yellow)
                    Text("PUC Minas")
                        .font(.subheadline)
                        .foregroundStyle(.blue)
                }
                Spacer()
            }
    }
}

#Preview {
    D2()
}
