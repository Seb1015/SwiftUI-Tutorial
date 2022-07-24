import SwiftUI

struct ContentView :View {
    var body: some View{
        VStack(alignment: .leading){
            Text("Turtle Rock")
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
