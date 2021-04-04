//
//  HomeView.swift
//  MojitoEats
//
//  Created by judongseok on 2021/04/02.
//

import SwiftUI

struct HomeView: View {
    // for sticky header
    @State var timer = Timer.publish(every: 0.001, on: .main, in: .tracking).autoconnect()
    @State var show = false
    var body: some View {
        VStack{
            // navigation
            NavbarView()
            ZStack{
                ScrollView(.vertical, showsIndicators: false, content: {
                    // events
                    EventView()
                    // kategorie
                    KategorieView()
                    // popular
                    PopularView()
                    // choice_store
                    ChoiceStore()
                    GeometryReader{g in
                        StickyHeader()
                            .onReceive(self.timer, perform: { _ in
                                // for tracking the image is scrolled out or not
                                let y = g.frame(in: .global).minY
                                // -511
                                if -y > (UIScreen.main.bounds.height / 2.2) - (UIScreen.main.bounds.height * 0.57){
                                    self.show = true
                                }
                                else{
                                    self.show = false
                                }
                            })
                    }
                    Content()
                        .offset(y: 50)
                })
                .padding(.vertical, -8)
                if self.show{
                    TopView()
                }
            }
        } 
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
