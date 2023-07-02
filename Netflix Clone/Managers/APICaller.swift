//
//  APICaller.swift
//  Netflix Clone
//
//  Created by Abdulkerim Can on 1.07.2023.
//

import Foundation

enum APIError: Error {
    case failedToGetData
}

struct Constants {
    static let API_KEY = "338496e127c9bd5b024baa46aff31a0b"
    static let BASE_URL = "https://api.themoviedb.org"
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (Result<[Title],Error>) -> Void) {
        
        guard let url = URL(string: "\(Constants.BASE_URL)/3/trending/movie/day?api_key=\(Constants.API_KEY)") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else{
                return
            }
            do {
                let results = try JSONDecoder().decode(TrendingTitleResponse.self,from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(APIError.failedToGetData))
            }
        }
        task.resume()
    }
    
    func getTrendingTv(completion: @escaping (Result<[Title],Error>) -> Void) {
        
        guard let url = URL(string: "\(Constants.BASE_URL)/3/trending/tv/day?api_key=\(Constants.API_KEY)") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else{
                return
            }
            do {
                let results = try JSONDecoder().decode(TrendingTitleResponse.self,from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(APIError.failedToGetData))
            }
        }
        task.resume()
    }
    
    func getUpcomingMovies(completion: @escaping (Result<[Title],Error>) -> Void) {
        
        guard let url = URL(string: "\(Constants.BASE_URL)/3/movie/upcoming?api_key=\(Constants.API_KEY)") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else{
                return
            }
            do {
                let results = try JSONDecoder().decode(TrendingTitleResponse.self,from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(APIError.failedToGetData))
            }
        }
        task.resume()
    }
    
    func getPopular(completion: @escaping (Result<[Title],Error>) -> Void) {
        
        guard let url = URL(string: "\(Constants.BASE_URL)/3/movie/popular?api_key=\(Constants.API_KEY)") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else{
                return
            }
            do {
                let results = try JSONDecoder().decode(TrendingTitleResponse.self,from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(APIError.failedToGetData))
            }
        }
        task.resume()
    }
    
    func getTopRated(completion: @escaping (Result<[Title],Error>) -> Void) {
        
        guard let url = URL(string: "\(Constants.BASE_URL)/3/movie/top_rated?api_key=\(Constants.API_KEY)") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else{
                return
            }
            do {
                let results = try JSONDecoder().decode(TrendingTitleResponse.self,from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(APIError.failedToGetData))
            }
        }
        task.resume()
    }
}
