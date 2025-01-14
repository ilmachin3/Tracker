//
//  TimetableDelegate.swift
//  Tracker
//
//  Created by Илья Дышлюк on 15.12.2024.
//

import Foundation
protocol TimetableDelegate: AnyObject {
    func didUpdateSelectedDays(_ selectedDays: Set<Days>)
}
