//
//  ViewController.swift
//  CodeVar
//
//  Created by Tushar Singh on 09/10/19.
//  Copyright © 2019 Tushar Singh. All rights reserved.
//
// original App

import UIKit
import Canvas
import MBCircularProgressBar

//MARK:- DATE AND TIME variables defined globally.

let date = Date()
let calander = Calendar.current
let hour = calander.component(.hour, from: date)
let minute = calander.component(.minute, from: date)
let day = calander.component(.day, from: date)
let month = calander.component(.month, from: date)
let eventTime = "\(hour):\(minute)"
let eventDate = "\(day):\(month)"

let day1 = "\(16):\(10)" // 15 Oct

let time1 = "\(19):\(00)"  // 07PM
let time2 = "\(21):\(00)"  // 09PM
let time3 = "\(00):\(00)"  // 12AM
let time4 = "\(02):\(00)"  // 02AM
let time5 = "\(06):\(00)"  // 06AM
let time6 = "\(09):\(00)"  // 09AM
let time7 = "\(10):\(00)"  // 10AM
let time8 = "\(13):\(00)"  // 01PM
let time9 = "\(15):\(00)"  // 03PM
let time10 = "\(18):\(00)" // 06PM
let time11 = "\(20):\(00)" // 08PM


//MARK:-

class TimelineViewController: UIViewController {
    
    let MAXTIME : Float = 100.0
    var currentTime : Float = 0.0
    var arr = ["Profile","About Us","Policy"]
    var iconArr = ["profile","about","policy"]

    @IBOutlet weak var progressView: MBCircularProgressBarView!
    @IBOutlet weak var currentLabel: UILabel!
    @IBOutlet weak var next1Label: UILabel!
    @IBOutlet weak var next2Label: UILabel!
    @IBOutlet weak var next3Label: UILabel!
    @IBOutlet weak var time1Label: UILabel!
    @IBOutlet weak var time2Label: UILabel!
    @IBOutlet weak var time3Label: UILabel!
    @IBOutlet weak var profileBttn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
        profileBttn.layer.cornerRadius = 8
        profileBttn.clipsToBounds = true
        self.progressView.value = 0
        self.progressView.maxValue = CGFloat(MAXTIME)
    }
    
    override func viewWillAppear(_ animated: Bool) {
         self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1){
            self.updateProgress()
        }
    }
    
    //MARK:- code below is to update the progress Bar in the scene according to the time
    

    @objc func updateProgress(){
           
           if eventTime >= time1 && eventTime < time2  && eventDate == day1 { // 7pm to 9pm
               self.progressView.value = 8
               self.progressView.progressColor = UIColor(red:0.90, green:0.67, blue:0.01, alpha:1.0) //yellow
               self.progressView.progressStrokeColor = UIColor(red:0.90, green:0.67, blue:0.01, alpha:1.0)
           }
           if eventTime > time2 && eventTime <= time3  && eventDate == day1 { // 9pm to 12am
               self.progressView.value = 20
               self.progressView.progressColor = UIColor(red:0.01, green:0.75, blue:0.91, alpha:1.0) // skyblue
               self.progressView.progressStrokeColor = UIColor(red:0.01, green:0.75, blue:0.91, alpha:1.0)

           }
           if eventTime > time3 && eventTime <= time4  && eventDate == day1 {  // 12am to 2am
               self.progressView.value = 28
               self.progressView.progressColor = UIColor(red:0.90, green:0.67, blue:0.01, alpha:1.0) //yellow
               self.progressView.progressStrokeColor = UIColor(red:0.90, green:0.67, blue:0.01, alpha:1.0)
           }
           if eventTime >= time4 && eventTime < time5  && eventDate == day1 {  // 2am to 6am
               self.progressView.value = 44
               self.progressView.progressColor = UIColor(red:0.01, green:0.75, blue:0.91, alpha:1.0) //skyblue
               self.progressView.progressStrokeColor = UIColor(red:0.01, green:0.75, blue:0.91, alpha:1.0)
           }
           if eventTime >= time5 && eventTime < time6  && eventDate == day1 {  // 6am to 9am
               self.progressView.value = 56
               self.progressView.progressColor = UIColor(red:0.64, green:0.00, blue:0.84, alpha:1.0) //purple
               self.progressView.progressStrokeColor = UIColor(red:0.64, green:0.00, blue:0.84, alpha:1.0)
           }
           if eventTime >= time6 && eventTime < time7  && eventDate == day1 {  // 9am to 10am
               self.progressView.value = 60
               self.progressView.progressColor = UIColor(red:0.90, green:0.67, blue:0.01, alpha:1.0) //yellow
               self.progressView.progressStrokeColor = UIColor(red:0.90, green:0.67, blue:0.01, alpha:1.0)
           }
           if eventTime >= time7 && eventTime < time8  && eventDate == day1 {  // 10am to 1pm
               self.progressView.value = 72
               self.progressView.progressColor = UIColor(red:0.01, green:0.75, blue:0.91, alpha:1.0) //skyblue
               self.progressView.progressStrokeColor = UIColor(red:0.01, green:0.75, blue:0.91, alpha:1.0)
           }
           if eventTime >= time8 && eventTime < time9  && eventDate == day1 {  // 1pm to 3pm
               self.progressView.value = 80
               self.progressView.progressColor = UIColor(red:0.90, green:0.67, blue:0.01, alpha:1.0) // yellow
               self.progressView.progressStrokeColor = UIColor(red:0.90, green:0.67, blue:0.01, alpha:1.0)
           }
           if eventTime >= time9 && eventTime < time10  && eventDate == day1 {  // 3pm to 6pm
               self.progressView.value = 92
               self.progressView.progressColor = UIColor(red:0.01, green:0.75, blue:0.91, alpha:1.0) // skyblue
               self.progressView.progressStrokeColor = UIColor(red:0.01, green:0.75, blue:0.91, alpha:1.0)
           }
           if eventTime >= time1 && eventTime < time11  && eventDate == day1 {  // 7pm to 8pm
               self.progressView.value = 100
               self.progressView.progressColor = UIColor(red:0.64, green:0.00, blue:0.84, alpha:1.0) // purple
               self.progressView.progressStrokeColor = UIColor(red:0.64, green:0.00, blue:0.84, alpha:1.0)
           }
       }
       
       //MARK:- code below is to update the labels in the scene according to the time

       @objc func updateLabels(){
           
           if eventTime >= time1 && eventTime < time2 && eventDate == day1 {  // 7pm to 9pm
               currentLabel.text = "Participant arrival & kit distribution"
               next1Label.text = "Participant arrival & kit distribution"
               next2Label.text = "Round1"
               next3Label.text = "Pizza"
               time1Label.text = "07:00 PM"
               time2Label.text = "09:00 PM"
               time3Label.text = "12:00 AM"
           }
           if eventTime >= time2 && eventTime < time3 && eventDate == day1 {  // 9pm to 12am
               currentLabel.text = "Round 1"
               next1Label.text = "Round 1"
               next2Label.text = "Pizza"
               next3Label.text = "Round 2"
               time1Label.text = "09:00 PM"
               time2Label.text = "12:00 AM"
               time3Label.text = "02:00 AM"
           }
           if eventTime >= time3 && eventTime < time4  && eventDate == day1 {  // 12am to 2am
               currentLabel.text = "Pizza"
               next1Label.text = "Pizza"
               next2Label.text = "Round 2"
               next3Label.text = "Fun event & giveaway"
               time1Label.text = "12:00 AM"
               time2Label.text = "02:00 AM"
               time3Label.text = "06:00 AM"
               
           }
           if eventTime >= time4 && eventTime < time5 && eventDate == day1 {  // 2am to 6am
               currentLabel.text = "Round 2"
               next1Label.text = "Round 2"
               next2Label.text = "Fun event & giveaway"
               next3Label.text = "Round 3"
               time1Label.text = "02:00 AM"
               time2Label.text = "06:00 AM"
               time3Label.text = "09:00 AM"
               
           }
           if eventTime >= time5 && eventTime <= time6 && eventDate == day1 {  // 6am to 9am
               currentLabel.text = "Fun event & giveaway"
               next1Label.text = "Fun event & giveaway"
               next2Label.text = "Breakfast"
               next3Label.text = "Round 3"
               time1Label.text = "06:00 AM"
               time2Label.text = "09:00 AM"
               time3Label.text = "10:00 AM"
           }
           if eventTime >= time6 && eventTime < time7  && eventDate == day1 {  // 9am to 10am
               currentLabel.text = "Breakfast"
               next1Label.text = "Breakfast"
               next2Label.text = "Round 3"
               next3Label.text = "Lunch"
               time1Label.text = "09:00 AM"
               time2Label.text = "10:00 AM"
               time3Label.text = "01:00 pM"
           }
           if eventTime >= time7 && eventTime < time8  && eventDate == day1 {  // 10am to 1pm
               currentLabel.text = "Round 3"
               next1Label.text = "Round 3"
               next2Label.text = "Lunch"
               next3Label.text = "Round 4"
               time1Label.text = "10:00 AM"
               time2Label.text = "01:00 PM"
               time3Label.text = "03:00 PM"
           }
           if eventTime >= time8 && eventTime < time9  && eventDate == day1 { // 1pm to 3pm
               currentLabel.text = "Lunch"
               next1Label.text = "Lunch"
               next2Label.text = "Round 4"
               next3Label.text = "Round 6"
               time1Label.text = "01:00 PM"
               time2Label.text = "03:00 PM"
               time3Label.text = "07:00 PM"
           }
           if eventTime >= time9 && eventTime < time10 && eventDate == day1 { // 3pm to 6pm
               currentLabel.text = "Round 4"
               next1Label.text = "Round 4"
               next2Label.text = "Closing ceremony"
               next3Label.text = ""
               time1Label.text = "03:00 PM"
               time2Label.text = "07:00 PM"
               time3Label.text = ""
           }
           if eventTime >= time1 && eventTime < time11 && eventDate == day1 { // 7pm to 8pm
               currentLabel.text = "All the best"
               next1Label.text = "Closing ceremony"
               next2Label.text = ""
               next3Label.text = ""
               time1Label.text = "07:00 AM"
               time2Label.text = ""
               time3Label.text = ""
               //currentEventstaticLabel.text = ""
               //roundendinStaticLabel.text = "Closing ceremony"
           }
           //if eventTime >= "\(19):\(35)" && eventTime <= "\(19):\(40)"  && eventDate == day1 {
             //  currentLabel.text = "Free Hour"
             //  next1Label.text = ""
               //next2Label.text = "Ceremony"
             //  next3Label.text = ""
             //  time1Label.text = ""
             //  time2Label.text = "07:58 PM"
             //  time3Label.text = ""
               //currentEventstaticLabel.text = ""
               //roundendinStaticLabel.text = "Closing ceremony"
           //}
       }

}

