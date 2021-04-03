//
//  HomeView.swift
//  MojitoEats
//
//  Created by judongseok on 2021/04/02.
//

import SwiftUI

struct HomeView: View {
    let columns: [GridItem] = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack{
            // navigation
            NavbarView()
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                // events
                EventView()
                // kategorie
                KategorieView()
                // popular
                PopularView()
                // choice_store
                ChoiceStore()
                LazyVGrid(columns: columns, spacing: 10, pinnedViews:[.sectionHeaders], content: {
                    Section(header: StickyHeader()){
                        Content()
                    }
                })
            })
            .padding(.top, -8)
        } 
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
