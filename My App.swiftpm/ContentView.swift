import SwiftUI

struct ContentView :View {
    var body: some View{
        VStack(alignment: .leading){
            Image("turtle")
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.gray, lineWidth: 4)
                }
                .shadow(radius: 7)
                .font(.title)
                .foregroundColor(.mint)
            
            HStack {
                Text("Joshua Tree National Park").font(.subheadline)
                Spacer()
                Text("California").font(.subheadline)
            }
        }.padding()
    }
}


struct ContentView_Preview_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
