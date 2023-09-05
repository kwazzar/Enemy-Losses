//
//  NetworkManager.swift
//  Enemy Losses
//
//  Created by Quasar on 26.08.2023.
//

import Foundation

protocol DataType: Codable {

    init?(json: [String:Any])
}

class NetworkManager {
    
    static func Request(url: String) {
        
        guard let url = URL(string: url) else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) {(data, response, error) in
            
            guard let response = response, let data = data else { return }
            
           print(response)
           print(data)
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            } catch {
                print(error)
            }
        }.resume()
    }
    
    static func fetchData<T: Codable>(url: String, completion: @escaping (_ array: [T])->()) {
        
        guard let url = URL(string: url) else { return }
        
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            
            
            guard let data = data else { return }
//            print(String(decoding: data, as: UTF8.self))
            
            do {
                let decoder = JSONDecoder()
                let array = try decoder.decode([T].self, from: data)
                completion(array)

            } catch let error {
                print("Error serialization json", error)
            }
            
        }.resume()
    }
}
