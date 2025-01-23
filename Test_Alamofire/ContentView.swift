//
//  ContentView.swift
//  Test_Alamofire
//
//  Created by pro 2020 on 23/1/25.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .task {
            test()
        }
    }
}

func test(){
    let url = "https://jsonplaceholder.typicode.com/todos/1"
    AF.request(url, method: .get).response{ res in
        debugPrint(res)
    }
}

#Preview {
    ContentView()
}
