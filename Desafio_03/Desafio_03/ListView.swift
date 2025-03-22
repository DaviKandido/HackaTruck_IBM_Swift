//
//  ListView.swift
//  Desafio_03
//
//  Created by Turma02-9 on 21/03/25.
//

import Foundation

import SwiftUI

struct ListView: View{
    
    struct Item : Identifiable, Hashable {
        var id = UUID()
        var name: String
        var icon: String
    }
    
    private var itens = [
        Item(name: "Pagina Rosa", icon: "paintbrush"),
        Item(name:"Pagina Azul", icon: "paintbrush.pointed"),
        Item(name:"Pagina Cinza", icon: "paintpalette"),
        Item(name:"Pagina List", icon: "list.bullet")
    ]
    
    
    var body: some View{
        VStack(alignment: .center){
            Text("List")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            VStack{
                List(itens){ i in
                    HStack{
                        Text(i.name)
                        Spacer()
                        Image(systemName: i.icon)
                    }
                }
                
            }
        }

    }
}

#Preview(){
    ListView()
}
