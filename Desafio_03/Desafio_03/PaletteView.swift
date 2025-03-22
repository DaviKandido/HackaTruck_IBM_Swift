//
//  PaletteView.swift
//  Desafio_03
//
//  Created by Turma02-9 on 21/03/25.
//

import Foundation


import SwiftUI

struct PalleView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .ignoresSafeArea()
                .scaledToFill()
            
            Circle()
                .frame(width: 250, height: 250)
                .zIndex(1)
            
            Image(systemName: "paintpalette")
                .resizable()
                .foregroundColor(.white)
                .frame(width: 150, height: 150)
                .zIndex(2)

        }
    }
}

#Preview {
    BrushView2()
}
