//
//  ApiRepository.swift
//  Food Factory
//
//  Created by israel lacerda gomes santos on 12/11/25.
//

protocol ApiRepository {
    func getArticles(topic: String, lang: String, country: String) async -> [Article]
}
