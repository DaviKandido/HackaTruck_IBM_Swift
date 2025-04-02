//
//  ContentView.swift
//  Desafio_01_IotConnect
//
//  Created by Turma02-9 on 01/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel();
    
    var body: some View {
        
        ScrollView(.vertical){
            VStack {
                
                ZStack{
                    Image("SensorUmidade")
                        .clipShape(Circle())
                        .frame(height: 200)
                        .scaledToFill()
                    
                    Text("Sensor Umidade")
                        .bold()
                        .padding(.top, 60)
                }
                
                ZStack{
                    Rectangle()
                        .foregroundColor(.clay)
                        .frame(maxWidth: 300, minHeight: 500)
                        .opacity(0.1)
                        .cornerRadius(20)
                        .padding(.top, 20)
                    
                    VStack{
                        ForEach(viewModel.umidade.suffix(5), id: \._id){ umid in
                            UmidadeView(umidade: umid.umidade ?? "Err: 404")
                        }
                    }
                    .padding(.top, 120)
                }

            }
        }.onAppear(){
            viewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
}
