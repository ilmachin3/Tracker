//
//  CategorySelectionDelegate.swift
//  Tracker
//
//  Created by Илья Дышлюк on 15.12.2024.
//

import Foundation
protocol CategorySelectionDelegate: AnyObject {
    func didSelectCategory(_ category: TrackerCategory)
}
