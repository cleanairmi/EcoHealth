//
//  TabbarView.swift
//  eco-health-ios
//
//  Created by Rohit Mahesh on 10/02/23.
//

import SwiftUI

struct TabbarView: View {
    
    @State var selection: TabbarViewType = .home
    private var cellColors: [Color] = [.ecoPink, .ecoGreen, .ecoSkyBlue]
    
    @State var navigateToDetails = false

    
    var body: some View {
        VStack {
            switch self.selection {
            case .home:
                HomeView()
                    .padding(.bottom, -28)
            case .explore:
                ExplorerView()
            case .pledge:
                PledgeView()
            }
              
            Spacer()
            CustomTabbarView(selectedTabbar: $selection)
        }
    }
}

#Preview {
    TabbarView()
}
