import SwiftUI

struct ImageView : View {
    var image: Image
    
    var body: some View {
        image
            .frame(width:200, height: 200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}


struct Image_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: Image("charleyrivers"))
    }
}
