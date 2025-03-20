//
//  D1.swift
//  Desafio01
//
//  Created by Turma02-9 on 19/03/25.
//

import SwiftUI

struct D1: View {
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: 80, height: 80)
                .foregroundColor(.red)
            Spacer()
            Rectangle()
                .frame(width: 80, height: 80)
                .foregroundColor(.blue)
        }
        .padding()
        Spacer()
        HStack{
            Rectangle()
                .frame(width: 80, height: 80)
                .foregroundColor(.green)
            Spacer()
            Rectangle()
                .frame(width: 80, height: 80)
                .foregroundColor(.yellow)
        }
        .padding()
    }
}

#Preview {
    D1()
}
