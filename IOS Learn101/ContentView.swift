//
//  ContentView.swift
//  IOS Learn101
//
//  Created by Rungkrit Titachotnimit on 17/1/2567 BE.
//

import SwiftUI

struct Option: Hashable{
    let title: String
    let imageName: String
}

struct ContentView: View {
    let options: [Option] = [
        .init(title: "Home", imageName: "house"),
        .init(title: "About", imageName: "info"),
        .init(title: "Setting", imageName: "gear"),
        .init(title: "Social", imageName: "message")
    ]
    
    var body: some View {
        NavigationView{
            ListView(options: options)
            
            MainView()
        }
        .frame(minWidth: 600, minHeight: 400)
    }
}
    struct ListView: View {
        let options: [Option]
        
        var body: some View{
            VStack{
                ForEach(options, id: \.self){option in
                    HStack{
                        Image(systemName: option.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                        
                        Text(option.title)
                        
                        Spacer()
                    }
                    .padding()
                }
            }
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

