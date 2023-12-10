//
//  View1.swift
//  Pulse
//
//  Created by Lalana Chamika on 2023-12-07.
//  Copyright © 2023 GTN. All rights reserved.
//

import SwiftUI
import UI_Kit_Package

struct View1: View {
    @EnvironmentObject var view1Model: View1Model
    
    var body: some View {
        HStack {
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(view1Model.potfolioData) { portfolio in
                        PotfolioCardView(
                            headingTitile: portfolio.name ,
                            icon: portfolio.image,
                            holdingAmount: portfolio.currentPrice.asCurrencyWith6Decimal(),
                            netChangeAmount: portfolio.atl?.asCurrencyWith6Decimal() ?? "00.00",
                            netChangePercentage: portfolio.atlChangePercentage?.asPercentString() ?? "0.0 %",
                            currency: "USD")
                    }
                }
                
            }
        }
    }
    

}

#Preview {
    View1()
        .environmentObject(View1Model())
}


