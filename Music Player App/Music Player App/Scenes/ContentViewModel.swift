//
//  ContentViewModel.swift
//  Music Player App
//
//  Created by Subba Reddy on 31/7/2566 BE.
//

import Foundation

class ContentViewModel: ObservableObject {
    
    @Published var audioData: [AudioFiles] = []
    
    func getAudioFiles() {
        
        audioData = []
        audioData.append(.init(link: "https://soundcloud.com/officialnohero/fireflies-with-steelnix?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing",
                               name: "Track 1"))
        audioData.append(.init(link: "https://soundcloud.com/michaelraywen/calvin-harris-summer-michael-raywen-remix-3?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing",
                               name: "Track 2"))
        audioData.append(.init(link: "https://soundcloud.com/komb_dj/komb-night-of-fire?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing",
                               name: "Track 3"))
     
//        let clientID = "0200c5b5486449ed88e9861d9598e2fa"
//       // let market = "ES"
//
//        let baseURL = "https://api.spotify.com/v1/tracks"
//        let parameters = ["ids":clientID, "market": "ES"]
//
//        var urlComponents = URLComponents(string: baseURL)
//
//        urlComponents?.queryItems = parameters.map {(URLQueryItem(name: $0.key, value: $0.value))}
//
//
//        guard let url = urlComponents?.url else { return }
//
//        let request = URLRequest(url: url)
//        request.httpMethod = "GET"
//        request.setValue("Beare <>", forHTTPHeaderField: <#T##String#>)
//
//
//        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
//            if let error = error {
//                print(error)
//                return
//            }
//            guard let httpResponse = response as? HTTPURLResponse, (200...209).contains(httpResponse.statusCode) else { print("Invalid")
//                return
//
//            }
//            if let data = data {
//                do {
//                    let decodedData = try JSONDecoder().decode(AudioFiles.self, from: data)
//                    self.audioData = decodedData
//                } catch {
//                    print("Print error")
//                }
//            }
//        }
//        task.resume()
    
    }
}
