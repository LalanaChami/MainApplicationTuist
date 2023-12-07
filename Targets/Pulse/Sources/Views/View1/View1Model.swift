//
//  View1Model.swift
//  Pulse
//
//  Created by Lalana Chamika on 2023-12-07.
//  Copyright © 2023 GTN. All rights reserved.
//

import Foundation
import Combine
import Base_SDK

class View1Model: ObservableObject {
    
    @Service var portfolioService: PortfolioService
    @Published var potfolioData: [PortfolioEntity] = []
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        subscribeToPortfolioData()
    }
    
    private func subscribeToPortfolioData() {
        portfolioService.$porfolioData
            .sink { [weak self] (returnedPortfolioData) in
                self?.potfolioData = returnedPortfolioData
            }
            .store(in: &cancellables)
    }
}
