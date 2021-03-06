//
//  NumbersTimelineSchedule.swift
//  NumbersTimelineSchedule
//
//  Provides sequence of dates for use as a schedule to display timers.
//

import SwiftUI

struct NumbersTimelineSchedule: TimelineSchedule {

    var startDate: Date

    init(from startDate: Date) {
        self.startDate = startDate
    }

    func entries(from startDate: Date, mode: TimelineScheduleMode) -> PeriodicTimelineSchedule.Entries {
        PeriodicTimelineSchedule(from: self.startDate, by: (mode == .lowFrequency ? 1.0 : 1.0 / 30.0))
            .entries(from: startDate, mode: mode)
    }
}
