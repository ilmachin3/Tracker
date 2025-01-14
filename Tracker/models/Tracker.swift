//
//  Tracker.swift
//  Tracker
//
//  Created by Илья Дышлюк on 23.12.2024.
//

import Foundation
import UIKit

struct Tracker {
    let id: UUID
    let name: String
    let color: UIColor
    let emoji: Character
    let schedule: [Days]
}
