//
//  ApiService.swift
//  Food Factory
//
//  Created by israel lacerda gomes santos on 12/11/25.
//

import Foundation


class ApiService {
    
    private let baseURL = "https://gnews.io/api/v4/search"
    
    func getArticles(topic: String, lang: String, country: String) async throws -> Articles {
        
        guard var urlAssistence = URLComponents(string: baseURL) else {
            throw ApiError.urlInvalida
        }
        
        urlAssistence.queryItems = [
            URLQueryItem(name: "q", value: topic),
            URLQueryItem(name: "lang", value: lang),
            URLQueryItem(name: "country", value: country),
            URLQueryItem(name: "max", value: "1"),
            URLQueryItem(name: "apikey", value: ApiKey.value)
        ]
        
        guard let url = urlAssistence.url else {
            throw ApiError.urlInvalida
        }
        
        print(url.absoluteString)
    
        let (data, response) = try await URLSession.shared.data(from: url)
        
    
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw ApiError.respostaInvalida
        }
        
        do {
            let decoder = JSONDecoder()
            let articlesResponse = try decoder.decode(Articles.self, from: data)
            return articlesResponse
        } catch {
            throw ApiError.decodificacaoFalhou
        }
    }
}


