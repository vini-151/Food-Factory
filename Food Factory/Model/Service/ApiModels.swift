//
//  ApiModels.swift
//  Food Factory
//
//  Created by israel lacerda gomes santos on 12/11/25.
//

// A resposta completa da API
struct Articles : Decodable {
    let totalArticles: Int
    let articles: [Article]
}

// Um único artigo
struct Article: Identifiable, Decodable {
    let id: String
    let title: String
    let description: String?
    let content: String?
    let url: String?
    let image: String?
    let publishedAt: String?
    let lang: String?
    let source: Source
}

// A fonte do artigo
struct Source : Decodable {
    let id: String?
    let name: String?           
    let url: String?
    let country: String?
}

