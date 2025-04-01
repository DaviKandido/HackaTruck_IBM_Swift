//
//  Trocedor.swift
//  Desafio_04_Api
//
//  Created by Turma02-9 on 27/03/25.
//

import Foundation
import SwiftUI


struct TorcedorView: View{
    
    @State var torcedor: Torcedor
    
    var body: some View{
        
        HStack{
            Group{
                Button{
                }label: {
                    Image(systemName: "person.fill")
                        .padding(.leading, 20)
                    Text(torcedor.nome ?? "seu nome")
                    
                    Spacer()
                    Image(systemName: "figure.soccer")
                    Text(torcedor.time ?? "seu time")
                        .padding(.trailing, 20)

                }
                .foregroundColor(.black)
                
            }
        }
        .frame(width: 300, height: 40)
        .border(Color.black)
        .cornerRadius(10)
    }
}


#Preview(){
    TorcedorView(
        torcedor: Torcedor(
            _id: "1",
            _rev: "2",
            nome: "meu nome",
            time: "time padrao"
        )
    )
}
