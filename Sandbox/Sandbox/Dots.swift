//
//  Dots.swift
//  Sandbox
//
//  Created by Shuhrat Shadmonov on 15/07/2019.
//  Copyright © 2019 Shuhrat Shadmonov. All rights reserved.
//

import Cocoa
import Foundation

func createDotsView(withSize size: CGFloat = 4, animationEnabled: Bool = false) -> NSStackView {
    
    var monthViews: [NSStackView] = []
    
    let monthDays = [31, isLeapYear() ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    for (indexOfMonth, numberOfDays) in monthDays.enumerated() {
        var dayViews: [NSView] = []
        for indexOfDay in 0...numberOfDays {
            let dayView = NSView()
            
            dayView.wantsLayer = true
            dayView.layer?.backgroundColor = #colorLiteral(red: 0, green: 0.9647058824, blue: 0.9176470588, alpha: 1)
            dayView.layer?.cornerRadius = size / 2
//            dayView.clipsToBounds = true
//            dayView.layer?.masksToBounds = false
            dayView.alphaValue = 0.2
            dayView.heightAnchor.constraint(equalToConstant: size).isActive = true
            dayView.widthAnchor.constraint(equalToConstant: size).isActive = true
            
            let isPastDay = indexOfMonth + 1 < dateComponents(.month) || (indexOfMonth + 1 == dateComponents(.month) && indexOfDay + 1 <= dateComponents(.day))
            
//            let isToday = indexOfMonth + 1 == dateComponents(.month) && indexOfDay + 1 == dateComponents(.day)
            
            if isPastDay {
                dayView.alphaValue = 1.0
            }
            
//            func todayDotInfinetyAnimation() {
//                NSView.animate(withDuration: 0.5, animations: {
//                    dayView.alpha = (dayView.alpha == 1.0) ? 0.2 : 1.0
//                }) { _ in todayDotInfinetyAnimation() }
//            }
            
            dayViews.append(dayView)
        }
        
        let monthStackView = NSStackView(views: dayViews)
        
        monthStackView.spacing = size
        monthStackView.alignment = .centerY
        monthStackView.translatesAutoresizingMaskIntoConstraints = false
        
        monthViews.append(monthStackView)
    }
    
    let yearStackView = NSStackView(views: monthViews)
    
    yearStackView.spacing = size
    yearStackView.alignment = .centerX
    yearStackView.distribution = .equalCentering
    yearStackView.translatesAutoresizingMaskIntoConstraints = false
    
    return yearStackView
}


func dateComponents(_ component: Calendar.Component) -> Int {
    let calendar = Calendar.current
    return calendar.component(component, from: Date())
}

func isLeapYear() -> Bool {
    let year = dateComponents(.year)
    return ((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0))
}

func numberOfDaysInThisYear() -> Int {
    return isLeapYear() ? 366 : 365
}

func nthOfDayInThisYear() -> Int {
    let date = Date()
    let calendar = Calendar.current
    let day = calendar.ordinality(of: .day, in: .year, for: date)
    return day!
}

func percentageOfThisYear() -> String {
    let calculation = Float(nthOfDayInThisYear()) / Float(numberOfDaysInThisYear())
    let result = String(calculation * 100.0).split(separator: ".").first!
    return "\(result)%"
}
