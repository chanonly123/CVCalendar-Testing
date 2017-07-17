//
//  ViewController.swift
//  CVCalendarTestinag
//
//  Created by Chandan on 04/07/17.
//  Copyright © 2017 Chandan. All rights reserved.
//

import UIKit
import CVCalendar

class ViewController: UIViewController {

    @IBOutlet weak var menuView: CVCalendarMenuView!
    @IBOutlet weak var calendarView: CVCalendarView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.calendarView.calendarAppearanceDelegate = self
        self.calendarView.calendarDelegate = self
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        menuView.commitMenuViewUpdate()
        calendarView.commitCalendarViewUpdate()
    }
    
}

extension ViewController: CVCalendarViewDelegate, CVCalendarMenuViewDelegate {
    
    func presentationMode() -> CalendarMode {
        return CalendarMode.monthView
    }
    
    func firstWeekday() -> CVCalendar.Weekday {
        return CVCalendar.Weekday.sunday
    }
    
}

extension ViewController: CVCalendarViewAppearanceDelegate {
    func dayLabelColor(by weekDay: Weekday, status: CVStatus, present: CVPresent) -> UIColor? {
        return UIColor.brown
    }
}
