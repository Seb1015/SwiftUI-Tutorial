import SwiftUI

struct ImageView : View {
    var body: some View {
        Image("turtle")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}


struct Image_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
