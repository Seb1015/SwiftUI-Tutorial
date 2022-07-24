import SwiftUI

struct ContentView :View {
    var body: some View{
        MyView().frame(height: 300).ignoresSafeArea(edges: .bottom)
        ImageView().offset(y: -140).padding(.bottom, -130)
        VStack {
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


struct ContentView_Preview_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
