//
//  MovieQuizControllerProtocol.swift
//  MovieQuiz
//
//  Created by Анастасия on 19.08.2023.
//

import Foundation

protocol MovieQuizViewControllerProtocol: AnyObject {
    func show(quiz step: QuizStepViewModel)
    func highlightImageBorder(isCorrectAnswer: Bool)
    
    func showLoadingIndicator()
    func hideLoadingIndicator()
    
    func showNetworkError(message: String)
    func buttonsInteraction(enable: Bool)
    func showFinalAlert()
}
