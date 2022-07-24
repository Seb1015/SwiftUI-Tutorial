import SwiftUI
import MapKit

struct Landmark: Decodable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String 
    
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates : Coordinates 
    
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.lat, longitude: coordinates.lon)
    }
    struct Coordinates: Hashable, Codable {
        var lat: Double
        var lon: Double
    }
}
