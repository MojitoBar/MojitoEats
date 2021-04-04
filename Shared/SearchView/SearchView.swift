//
//  SearchView.swift
//  MojitoEats
//
//  Created by judongseok on 2021/04/04.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack{
            SearchHeader()
                .background(Color.white)
            SearchNavBar()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
