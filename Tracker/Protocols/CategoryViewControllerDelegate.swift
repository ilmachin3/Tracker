//
//  CategoryViewControllerDelegate.swift
//  Tracker
//
//  Created by Илья Дышлюк on 15.12.2024.
//

import Foundation
protocol CategoryViewControllerDelegate: AnyObject {
    func didSelectCategory(_ category: TrackerCategory)
}
