import SwiftUI

// バージョンとビルド番号を取得
// @see https://qiita.com/Riscait/items/b57c21678025cf8d9367
let version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
let build = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as! String

@main
struct HelloMacAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Sidebar();
                MainView();
            }
        }
        // NOTE: タイトルバーレスのWindowを設定する
        // @see https://developer.apple.com/forums/thread/667533
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}
