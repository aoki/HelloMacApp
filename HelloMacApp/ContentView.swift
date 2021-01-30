import SwiftUI

// バージョンとビルド番号を取得
// @see https://qiita.com/Riscait/items/b57c21678025cf8d9367
let version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
let build = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as! String

struct ContentView: View {
    
    @State var count: Int = 0
    
    func countUp() {
        count += 1;
    }
    
    var body: some View {
        VStack {
            Label("Version: \(version), Build: \(build)", systemImage: "bolt.fill")
            Text("Hello, world!").padding()
            HStack {
                Text("\(count)")
                Button(action: {self.countUp()}) {
                    Text("Count Up")
                }
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
