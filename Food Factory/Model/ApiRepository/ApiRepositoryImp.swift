//
//  ApiRepository.swift
//  Food Factory
//
//  Created by israel lacerda gomes santos on 12/11/25.
//




class ApiRepositoryImpl: ApiRepository {
    
    let apiService = ApiService()
    
    
    func getArticles(topic: String, lang: String, country: String) async -> [Article] {
        do {
            let articlesObject = try await apiService.getArticles(topic: topic, lang: lang, country: country)
            return articlesObject.articles
            
        } catch {
            print("Erro ao buscar artigos no repositório: \(error)")
            return []
        }
    }
}
