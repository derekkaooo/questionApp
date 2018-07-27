//
//  ViewController.swift
//  questionApp
//
//  Created by Derek on 2018/7/27.
//  Copyright © 2018年 Derek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //創建一個struct等下存問題和答案
    struct Qna{
        var question:String
        var answer:String
    }
    //創建一個array列出所有問題&答案
    var array = [Qna(question: "賽特的心上人是?", answer: "莉蓮"), Qna(question: "賽特前世與撒旦在天界造反時設計的陣法是?", answer: "反曼陀羅陣"),Qna(question: "移動島是誰的家?", answer: "妮可"),Qna(question: "安卡是什麼動物?", answer: "貓"),Qna(question: "遊戲一開始，在威尼斯廣場大鐘敲20下可以獲得什麼?", answer: "絕情貓袖箭"),Qna(question: "什麼道具能使玩家脫離迷宮?", answer: "諸方神石"),Qna(question: "妮可養的狗叫什麼名字?", answer: "波爾"),Qna(question: "恐懼之王是誰?", answer: "康那里士"),Qna(question: "慧彥大師死於哪一場戰役?", answer: "怛羅斯戰役"),Qna(question: "賽特的特殊能力是?", answer: "穿越時空")]
    
    
    //題號從第一題開始往下加，這邊先設一個coutNumber
    var countNumber = 1
    
    @IBOutlet weak var countDownLabel: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    //按按鈕秀出答案
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        answerLabel.isHidden = false
    }
    
    //按按鈕到下一題
    @IBAction func nextQuestionPressed(_ sender: UIButton) {
        
        questionLabel.text = array[countNumber].question
        answerLabel.text = array[countNumber].answer
        countNumber += 1
        answerLabel.isHidden = true
        countDownLabel.text = "題數： \(countNumber)"
        
    }
    
    @IBAction func startOverButtonPressed(_ sender: UIButton) {
        startOver()
    }
    
    
    func startOver(){
        countNumber = 0
        questionLabel.text = array[countNumber].question
        answerLabel.text = array[countNumber].answer
        
        countNumber += 1
        if countNumber == array.count + 1{
            countNumber = 0
        }
        answerLabel.isHidden = true
        countDownLabel.text = "題數： \(countNumber)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

