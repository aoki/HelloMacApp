import SwiftUI

struct Sidebar: View {
    
    private let names = ["Menu1", "Menu2", "Menu3", "Menu4"]
    @State private var selection: String?
    
    var body: some View {
        // サイドバーにメニューを実装
        // @see https://ja.ojit.com/so/swift/1499290
        List(selection: $selection) {
            Section() {
                NavigationLink(destination: MainView()) {
                    Label("Main", systemImage: "house.fill")
                }
                NavigationLink(destination: CounterView()) {
                    Label("Counter", systemImage: "number")
                }
            }
        }.listStyle(SidebarListStyle())
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
