import SwiftUI

@main
struct HelloMacAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        // NOTE: タイトルバーレスのWindowを設定する
        // @see https://developer.apple.com/forums/thread/667533
            .windowStyle(HiddenTitleBarWindowStyle())
    }
}
