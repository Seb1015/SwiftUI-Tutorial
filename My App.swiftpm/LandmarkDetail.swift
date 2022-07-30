import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            MyView(coordinates: landmark.locationCoordinate).frame(height: 300).ignoresSafeArea(edges: .top)
            ImageView(image: landmark.image).offset(y: -250).padding(.bottom, -300)
            VStack(alignment: .leading){
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.mint)
                
                HStack {
                    Text("Joshua Tree National Park").font(.subheadline)
                    Spacer()
                    Text("California").font(.subheadline)
                }.font(.subheadline).foregroundColor(.gray)
                Divider()
                Text("About Turtle Rock")
                    .font(.title3)
                Text("Descriptive text goes here.")
            }.padding()
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[2])
    }
}
