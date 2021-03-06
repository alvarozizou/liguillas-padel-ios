//
//  CalendarVM.swift
//  LiguillasPadel
//
//  Created by Alvaro Blazquez Montero on 30/8/18.
//  Copyright © 2018 Alvaro Blazquez Montero. All rights reserved.
//

import Foundation

class CalendarVM {

    weak var parent: LeagueItemVM?
    var data: CalendarItemVM
    var coordinator: HomeCoordinator
    
    init(data: CalendarItemVM, coordinator: HomeCoordinator) {
        self.data = data
        self.coordinator = coordinator
    }
    
    var title: String {
        return parent?.name ?? ""
    }
    
    var count: Int {
        return data.count
    }
    
    func itemAtIndex(_ index: Int) -> WeekItemVM? {
        return data.itemAtIndex(index)
    }
    
    func itemAtIndex(_ index: IndexPath) -> MatchItemVM? {
        return data.itemAtIndex(index)
    }
    
    func goToTable() {
        if let parent = parent {
            let transition = HomeTransition.goTable(tableItemVM: parent.table, parent: parent)
            coordinator.performTransition(transition: transition)
        }
    }
    
}
