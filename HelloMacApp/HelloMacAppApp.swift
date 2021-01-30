import SwiftUI

@main
struct HelloMacAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
              Sidebar()
              ContentView().frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
        // NOTE: タイトルバーレスのWindowを設定する
        // @see https://developer.apple.com/forums/thread/667533
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}
