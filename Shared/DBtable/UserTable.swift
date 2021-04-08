//
//  UserTable.swift
//  MojitoEats (iOS)
//
//  Created by judongseok on 2021/04/08.
//

import SwiftUI

struct UserTable: Codable, Identifiable{
    // table Model
    var id: UUID
    var name: String
    var userId: String
}

// Fetch Data
class FetchUser: ObservableObject {
    @Published var userTables = [UserTable]()
     
    init() {
        let url = URL(string: "API_URL")!
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            do {
                if let userData = data {
                    let decodedData = try JSONDecoder().decode([UserTable].self, from: userData)
                    DispatchQueue.main.async {
                        self.userTables = decodedData
                    }
                } else {
                    print("No data")
                }
            } catch {
                print("Error")
                print(error)
            }
        }.resume()
    }
}
