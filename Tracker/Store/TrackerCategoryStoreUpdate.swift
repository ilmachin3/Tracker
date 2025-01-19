//
//  TrackerCategoryStoreUpdate.swift
//  Tracker
//
//  Created by Илья Дышлюк on 12.01.2025.
//

import Foundation

struct TrackerCategoryStoreUpdate {
    struct Move: Hashable {
        let oldIndex: Int
        let newIndex: Int
    }
    let insertedIndexes: IndexSet
    let deletedIndexes: IndexSet
    let updatedIndexes: IndexSet
    let movedIndexes: Set<Move>
}
