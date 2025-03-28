//
//  Modo2_2.swift
//  Desafio_04
//
//  Created by Turma02-9 on 21/03/25.
//


import Foundation

import SwiftUI

struct Modo2_2: View {
    
    @State var nameComplete: String = "";
    
    
    var body: some View {
        
        ZStack{
            Color.blackPurple
                .opacity(0.8)
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack{
                Text("Modo 2")
                    .font(.title)
                    .padding(.top, 20)
                    
                Spacer()
                
                ZStack{
                    Rectangle()
                        .frame(width: 230, height: 100)

                    VStack{
                        Text("Volte sempre \(nameComplete)")
                            .foregroundStyle(.white)
                    }

                }
                .foregroundColor(.pink)
                
                Spacer()
            }

        }
    }
}


#Preview(){
    Modo2_2()
}
