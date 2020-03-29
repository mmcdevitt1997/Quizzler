//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by  Matthew McDevitt on 3/28/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
          Question(q: "Four + Two is equal to Six", a: "True"),
          Question(q:"Five - Three is greater than One", a: "True"),
          Question(q: "Three + Eight is less than Ten", a: "False"),
      ]
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
            
        }else{
            return false 
        }
    }
    func getScore() -> Int {
        return score
    }
    func getQuestionText() -> String {
        return quiz[questionNumber].text 
    }
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else{
            questionNumber = 0
            score = 0 
        }
    }
    
}
