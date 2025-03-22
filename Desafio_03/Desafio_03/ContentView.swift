//
//  ContentView.swift
//  Desafio_03
//
//  Created by Turma02-9 on 21/03/25.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        TabView{
            BrushView()
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush")
                }
            BrushView2()
                .tabItem{
                    Label("Azul", systemImage: "paintbrush.pointed")
            }
            PalleView()
                .tabItem{
                    Label("Cinza", systemImage: "paintpalette")
                }
            ListView()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
            }
        }
    }
}

#Preview {
    ContentView()
}
