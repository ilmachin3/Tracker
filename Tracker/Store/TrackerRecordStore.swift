//
//  TrackerRecordStore.swift
//  Tracker
//
//  Created by Илья Дышлюк on 12.01.2025.
//

import Foundation
import CoreData

final class TrackerRecordStore {
    private let context: NSManagedObjectContext
    private var fetchedResultsController: NSFetchedResultsController<TrackerRecordCoreData>?
    
    init(context: NSManagedObjectContext) {
        self.context = context
        setupFetchedResultsController()
    }
    
    private func setupFetchedResultsController() {
        let fetchRequest: NSFetchRequest<TrackerRecordCoreData> = TrackerRecordCoreData.fetchRequest()
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "date", ascending: true)]
        
        fetchedResultsController = NSFetchedResultsController(
            fetchRequest: fetchRequest,
            managedObjectContext: context,
            sectionNameKeyPath: nil,
            cacheName: nil
        )
        
        do {
            try fetchedResultsController?.performFetch()
        } catch {
            print("Error fetching records \(error.localizedDescription)")
        }
    }
    
    func fetchAllRecords() -> [TrackerRecordCoreData] {
        fetchedResultsController?.fetchedObjects ?? []
    }
    
    func saveRecord(date: Date) {
        context.performAndWait {
            let record = TrackerRecordCoreData(context: context)
            record.id = UUID()
            record.date = date
            
            do {
                try context.save()
            } catch {
                print("Failed to save record \(error)")
            }
        }
    }
}
