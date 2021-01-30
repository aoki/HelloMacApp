import SwiftUI

struct ContentView: View {
    
    @State var count: Int = 0
    
    func countUp() {
        count += 1;
    }
    
    var body: some View {
        Text("Hello, world!")
            .padding()
        HStack {
            Text("\(count)")
            Button(action: {self.countUp()}) {
                Text("Count Up")
            }
        }.padding(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
