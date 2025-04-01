//
//  Model.swift
//  Desafio_03_Rest
//
//  Created by Turma02-9 on 26/03/25.
//

import Foundation


struct Torcedor: Codable, Hashable{
    let _id: String?
    let _rev: String?
    let nome: String?
    let time: String?
}

struct TorcedorPost: Codable{
    let nome: String?
    let time: String?
}

//struct Feedback: Codable {
//    var name: String
//    var feedback: String
//}
