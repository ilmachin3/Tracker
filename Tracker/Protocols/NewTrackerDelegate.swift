//
//  NewTrackerDelegate.swift
//  Tracker
//
//  Created by Илья Дышлюк on 15.12.2024.
//

import Foundation

protocol NewTrackerDelegate: AnyObject {
    func didFinishCreatingTracker(trackerType: TrackerType)
}

