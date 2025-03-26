//
//  Annotation.swift
//  Desafio_02_Maps
//
//  Created by Turma02-9 on 25/03/25.
////
//
import SwiftUI

struct AnnotationExpView: View {

    @State var locationVar: Location
    @State var mostraSheet: Bool = false;

    
    var body: some View {
        Button(action: {
            mostraSheet.toggle()
        }, label: {
            VStack {

                
                Image(locationVar.foto)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .clipShape(.circle)
                Text(locationVar.nome)
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .lineLimit(0)
                    .bold()
                    .frame(width: 80, height: 10)
            }
        })
        .sheet(isPresented: $mostraSheet, content: {
            Sheet(locationVar: locationVar)
                .cornerRadius(50)
                .ignoresSafeArea()

        })
        
    }
}

#Preview {
    AnnotationExpView(locationVar: Location(
        nome: "Lagoa Paulina",
        foto: "lagoa_paulina",
        descricao: "A Lagoa Paulina é uma das mais conhecidas da cidade, com ótima estrutura para lazer.",
        latitude: -19.1989,
        longitude: -44.2555
    ))
}
