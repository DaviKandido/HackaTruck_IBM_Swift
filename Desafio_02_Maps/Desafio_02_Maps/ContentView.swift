//
//  ContentView.swift
//  Desafio_02_Maps
//
//  Created by Turma02-9 on 25/03/25.
//

import SwiftUI
import MapKit

struct Location: Hashable{
    let id = UUID()
    let nome: String
    let foto: String
    let descricao: String
    let latitude: Double
    let longitude: Double
    
    var cordinate: CLLocationCoordinate2D{
            CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        }
    }

struct ContentView: View {
    
    @State var longitudeVar: Double = -19.466666666667;
    @State var latitudeVar: Double = -44.252222222222;
    
    func definirLatLon(latitude: Double, longitude: Double){
        longitudeVar = latitude;
        latitudeVar = longitude;
    }
        
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -19.466666666667, longitude: -44.252222222222),
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0 )
        )
    )
    

    var Locations: [Location] = [
        Location(
            nome: "Lagoa Paulina",
            foto: "lagoa_paulina",
            descricao: "A Lagoa Paulina é uma das mais conhecidas da cidade, com ótima estrutura para lazer.",
            latitude: -19.4658,
            longitude: -44.2469
        ),
        Location(
            nome: "Lagoa do Varginha",
            foto: "lagoa_do_varginha",
            descricao: "A Lagoa do Varginha é um local tranquilo e ideal para caminhadas e atividades ao ar livre.",
            latitude: -19.2500,
            longitude: -44.2270
        ),
        Location(
            nome: "Lagoa da Boa Vista",
            foto: "lagoa_boa_vista",
            descricao: "A Lagoa da Boa Vista é famosa pela beleza e pela fauna local.",
            latitude: -19.2234,
            longitude: -44.2356
        ),
        Location(
            nome: "Lagoa do Pachola",
            foto: "lagoa_do_pachola",
            descricao: "A Lagoa do Pachola é um ponto turístico com muitas opções de lazer e contato com a natureza.",
            latitude: -19.1910,
            longitude: -44.2650
        )
    ]
    
   @State var locationPicker: Location = Location(
        nome: "Lagoa Paulina",
        foto: "lagoa_paulina",
        descricao: "A Lagoa Paulina é uma das mais conhecidas da cidade, com ótima estrutura para lazer.",
        latitude: -19.4658,
        longitude: -44.2469
    );
    
    
    var body: some View {
        VStack {
            
            ZStack{
                Map(position: $position){
                    ForEach(Locations, id: \.self) { locationFor in
                        
                        Annotation(locationFor.nome, coordinate: locationFor.cordinate){
                            AnnotationExpView(locationVar: locationFor)
                        }
                        .annotationTitles(.hidden)
                    }
                }
                .ignoresSafeArea()
                
                VStack{
                    Picker(selection: $locationPicker , label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                        ForEach(Locations, id: \.self) { locationFor in
                            Text(locationFor.nome)
                        }
                    }
                    .onChange(of: locationPicker){
                        position = MapCameraPosition.region(
                            MKCoordinateRegion(
                                center: CLLocationCoordinate2D(latitude: locationPicker.latitude, longitude: locationPicker.longitude),
                                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0 )
                            )
                    )}
                    Spacer()
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
