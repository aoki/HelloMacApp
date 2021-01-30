import SwiftUI

struct CounterView: View {
    
    @State private var count: Int = 0
    @State private var speed = 50.0
    
    func countUp() {
        count += 1;
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("\(count)")
                Button(action: {self.countUp()}) {
                    Text("Count Up")
                }
            }
            VStack{
                Text("\(speed)")
                Slider(value: $speed, in: 0...100)
            }
        }.padding()
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
