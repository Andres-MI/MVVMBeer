//
//  BeersService.swift
//  MVVMBeer
//
//  Created by Andrés Melenchón on 1/3/22.
//

import Foundation

protocol BeersServiceProtocol {
    func getBeers(completion: @escaping (_ success: Bool, _ results: Beers?, _ error: String?) -> ())
}

class BeersService: BeersServiceProtocol {
    func getBeers(completion: @escaping (Bool, Beers?, String?) -> ()) {
        HttpRequestHelper().GET(url: "https://api.punkapi.com/v2/", params: ["": ""], httpHeader: .application_json) { success, data in
            if success {
                do {
                    let model = try JSONDecoder().decode(Beers.self, from: data!)
                    completion(true, model, nil)
                } catch {
                    completion(false, nil, "Error: Trying to parse Beers to model")
                }
            } else {
                completion(false, nil, "Error: Beers GET Request failed")
            }
        }
    }
}
