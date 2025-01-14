//
//  NewCategoryViewControllerDelegate.swift
//  Tracker
//
//  Created by Илья Дышлюк on 15.12.2024.
//

import Foundation
protocol NewCategoryViewControllerDelegate: AnyObject {
    func didAddCategory(_ category: TrackerCategory)
    func removeStubAndShowCategories()
}
