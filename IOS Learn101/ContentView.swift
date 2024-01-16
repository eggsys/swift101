//
//  ContentView.swift
//  IOS Learn101
//
//  Created by Rungkrit Titachotnimit on 17/1/2567 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ListView()
            
            MainView()
        }
        .frame(minWidth: 600, minHeight: 400)
    }
}
    struct ListView: View {
        var body: some View{
            Text("List1")
        }
    }
    
    struct MainView: View {
        var body: some View{
            Text("List2")
        }
    }
    
    
struct ContentView_Preview: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}

