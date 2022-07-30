import SwiftUI
import MapKit

struct MyView: View {
    var coordinates: CLLocationCoordinate2D
    @State var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setCoordinates(coordinates)
            }
    }
    
    private func setCoordinates(_ newCoordinates: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: newCoordinates, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(coordinates: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
