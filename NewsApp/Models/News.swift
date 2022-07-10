//
//  News.swift
//  NewsApp
//
//  Created by Роман Замолотов on 09.07.2022.
//

import Foundation

struct News: Decodable {
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?

}

struct NewsEnvelope: Decodable {
    let status: String
    let totalResults: Int
    let articles: [News]
}
