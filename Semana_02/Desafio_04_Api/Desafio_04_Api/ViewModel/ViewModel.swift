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

extension ContentView{
    func post(torcedorPost: [TorcedorPost]) {
            guard let url = URL(string: "http://127.0.0.1:1880/postDavi") else { return }
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            
            do {
                let jsonData = try JSONEncoder().encode(torcedorPost)
                request.httpBody = jsonData
                
                URLSession.shared.dataTask(with: request) { data, response, error in
                    if let error = error {
                        DispatchQueue.main.async {
                            self.alertMsg = "Failed to send feedback: \(error.localizedDescription)"
                            self.showAlert = true;
                        }
                        return
                    }
                    
                    guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 201 else {
                        DispatchQueue.main.async {
                            self.alertMsg = "Failed with status code: \((response as? HTTPURLResponse)?.statusCode ?? -1)"
                            self.showAlert = true;

                        }
                        return
                    }
                    
                    DispatchQueue.main.async {
                        self.alertMsg = "Feedback sent successfully!"
                        self.showAlert = true;

                    }
                }.resume()
            } catch {
                DispatchQueue.main.async {
                    self.alertMsg = "Failed to encode feedback"
                    self.showAlert = true;

                }
            }
        }
}


//extension FeedbackFormView {
//    func postFeedback(feedback: Feedback) {
//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//        
//        do {
//            let jsonData = try JSONEncoder().encode(feedback)
//            request.httpBody = jsonData
//            
//            URLSession.shared.dataTask(with: request) { data, response, error in
//                if let error = error {
//                    DispatchQueue.main.async {
//                        self.alertMessage = "Failed to send feedback: \(error.localizedDescription)"
//                        self.showAlert = true
//                    }
//                    return
//                }
//                
//                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 201 else {
//                    DispatchQueue.main.async {
//                        self.alertMessage = "Failed with status code: \((response as? HTTPURLResponse)?.statusCode ?? -1)"
//                        self.showAlert = true
//                    }
//                    return
//                }
//                
//                DispatchQueue.main.async {
//                    self.alertMessage = "Feedback sent successfully!"
//                    self.showAlert = true
//                }
//            }.resume()
//        } catch {
//            DispatchQueue.main.async {
//                self.alertMessage = "Failed to encode feedback"
//                self.showAlert = true
//            }
//        }
//    }
//}
