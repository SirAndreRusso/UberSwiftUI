//
//  HomeView.swift
//  UberSwiftUI
//
//  Created by Андрей Русин on 19.10.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        UberMapViewRepresentable()
            .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
