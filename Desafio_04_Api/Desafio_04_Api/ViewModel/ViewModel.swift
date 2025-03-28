//
//  ViewModel.swift
//  Desafio_03_Rest
//
//  Created by Turma02-9 on 26/03/25.
//

import Foundation

class ViewModel: ObservableObject{
    
    @Published var Torcedores: [Torcedor] = []
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/getDavi") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let parsed = try JSONDecoder().decode([Torcedor].self, from: data)
                
                DispatchQueue.main.async{
                    self?.Torcedores = parsed
                }
            } catch{
                print(error)
            }
        }
        task.resume()
    }
    
}
