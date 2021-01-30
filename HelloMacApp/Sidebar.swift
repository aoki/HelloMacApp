import SwiftUI

struct Sidebar: View {
    
    private let names = ["Menu1", "Menu2", "Menu3", "Menu4"]
    @State private var selection: String?
    
    var body: some View {
        // サイドバーにメニューを実装
        // @see https://ja.ojit.com/so/swift/1499290
        List(selection: $selection) {
            Section(header: Text("Menu List")) {
                ForEach(names, id: \.self) { name in
                    Text(name)
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
