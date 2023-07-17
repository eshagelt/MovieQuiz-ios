//
//  GameRecord.swift
//  MovieQuiz
//
//  Created by Анастасия on 16.07.2023.
//

import Foundation

struct GameRecord: Codable, Comparable {
    let correct: Int
    let total: Int
    let date: Date
    
    private var accuracy: Double {
        guard total != 0 else {
            return 0
        }
        return Double(correct) / Double(total)
    }
    
    static func <(lhs: GameRecord, rhs: GameRecord) -> Bool {
            return lhs.correct < rhs.correct
        }
} 
