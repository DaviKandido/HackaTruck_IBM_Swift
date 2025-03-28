//
//  PersonagemDestalhes.swift
//  Desafio_03_Rest
//
//  Created by Turma02-9 on 26/03/25.
//

import Foundation


//
//  PersonagemView.swift
//  Desafio_03_Rest
//
//  Created by Turma02-9 on 26/03/25.
//

import Foundation

import SwiftUI

struct PersonagemDetalhes: View {
    
        
    @State var Perso: Hapo
    
    
    var body: some View {
        
        VStack{
            AsyncImage(url: URL(string: Perso.image ?? "Descohecido")) { image in
                image
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 200, height: 200)
            }
            placeholder: {
                Image("Desconhecido")
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 200, height: 200)
            }
            
            Text(Perso.name ?? "Desconhecido")
                .font(.title)
                .padding(.bottom, 10)
            
            Text(Perso.house ?? "Desconhecido")
                .font(.title3)
                .padding(.bottom, 10)
            
            Text(Perso.species ?? "Desconhecido")
                .font(.title3)
                .padding(.bottom, 10)
            
            Text(Perso.patronus ?? "Desconhecido")
                .font(.title3)
                .padding(.bottom, 10)
            

            
            Spacer()
        }
    }
}

#Preview {
        PersonagemDetalhes(Perso: Hapo(
        id: "1",
        name: "Harry Potter",
        alternate_names: ["The Boy Who Lived", "The Chosen One"],
        species: "Human",
        gender: "Male",
        house: "Gryffindor",
        dateOfBirth: "1980-07-31",
        yearOfBirth: 1980,
        wizard: true,
        ancestry: "Half-blood",
        eyeColour: "Green",
        hairColour: "Black",
        wand: Wand(wood: "Holly", core: "Phoenix Feather", length: 11.0)
        ,
        patronus: "Stag",
        hogwartsStudent: true,
        hogwartsStaff: false,
        actor: "Daniel Radcliffe",
        alternate_actors: ["Matthew Lewis", "Rupert Grint"],
        alive: true,
        image: "https://example.com/harry-potter-image.jpg"
    ))
}
