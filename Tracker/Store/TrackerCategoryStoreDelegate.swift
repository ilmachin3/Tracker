//
//  TrackerCategoryStoreDelegate.swift
//  Tracker
//
//  Created by Илья Дышлюк on 17.01.2025.
//

import Foundation

protocol TrackerCategoryStoreDelegate: AnyObject {
    func categoriesDidChange()
    func categoryDidUpdate(_ updatedCategory: TrackerCategory)
}
