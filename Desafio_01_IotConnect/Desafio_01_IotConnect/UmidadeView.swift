//
//  ContentView.swift
//  Desafio_01_IotConnect
//
//  Created by Turma02-9 on 01/04/25.
//

import SwiftUI

struct UmidadeView: View {
    
    @StateObject var viewModel = ViewModel();
    
    @State var umidade = ""
    
    var body: some View {
                   
        ZStack{
            Rectangle()
                .frame(maxWidth: 200, maxHeight: 50)
                .cornerRadius(10)
                .foregroundColor(.clay)
                .opacity(0.3)
            
            Text(umidade + "%")
        }
    }
}

#Preview {
    UmidadeView(
    umidade: "28.3"
    )
}
