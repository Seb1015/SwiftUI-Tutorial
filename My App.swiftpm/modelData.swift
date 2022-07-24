import SwiftUI

//This function is using genetics
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Could not find file")
    }
    do {
        data = try Data(contentsOf: file)
    }catch {
        fatalError("Could not load data")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch {
        fatalError("Could not parse data")
    }
}

var landmarks: [Landmark] = load("landmarks.json")
