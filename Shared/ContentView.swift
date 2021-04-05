//
//  ContentView.swift
//  Shared
//
//  Created by judongseok on 2021/04/01.
//
import SwiftUI
struct ContentView: View {
    @State var Screen: String = "Home"
    @State var OpacityNum: [Double] = [1, 0.5, 0.5, 0.5, 0.5]
    var body: some View {
        VStack {
            switch Screen {
                case "Home":
                    HomeView()
                case "Search":
                    SearchView()
                case "Order":
                    OrderView()
                case "User":
                    UserView()
                default:
                    HomeView()
            }
            TabButtonView(Screen: $Screen, OpacityArr: $OpacityNum)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
