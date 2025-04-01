//
//  FeedBackFormView.swift
//  Desafio_04_Api
//
//  Created by Turma02-9 on 29/03/25.
//

import Foundation
import SwiftUI

struct FeedbackFormView: View {
    
    @State var erro = ""
    

    var body: some View {
        
            Text(erro)
    }
}


#Preview {
    FeedbackFormView(erro: "Erro de cadastro")
}
