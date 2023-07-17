//
//  StatisticService.swift
//  MovieQuiz
//
//  Created by Анастасия on 15.07.2023.
//

import Foundation

protocol StatisticService {
    func store(correct count: Int, total amount: Int)
    var totalAccuracy: Double { get }
    var gamesCount: Int { get }
    var bestGame: GameRecord { get }
    var total: Int { get }
    var correct: Int { get }
} 
