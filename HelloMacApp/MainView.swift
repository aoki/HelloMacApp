import SwiftUI

struct MainView: View {
    
    var body: some View {
        VStack {
            Label("Version: \(version), Build: \(build)", systemImage: "bolt.fill")
            Text("Hello, world!").padding()
        }.padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
