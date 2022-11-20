//
//  Link.swift
//  Listly
//
//  Created by Иса on 20.11.2022.
//

enum Link: String {
    case url = "https://list.ly/api/v4/meta?url=http://google.com"
}

struct Listly: Decodable {
    let url: String
    let metadata: MetaDataList
}

struct MetaDataList: Decodable {
    let status: Int
    let url: String
    let name: String
    let description: String
    let images: [String]
}

