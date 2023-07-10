//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by Анастасия on 10.07.2023.
//

import UIKit

final class AlertPresenter: AlertPresenterProtocol {
    private weak var delegate: UIViewController?
    
    init(delegate: UIViewController) {
        self.delegate = delegate
    }
    
    func show(quiz result: QuizResultsViewModel) {
        let alert = UIAlertController(title: result.title,
                                      message: result.text,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: result.buttonText, style: .default)
        
            alert.addAction(action)
            delegate?.present(alert, animated: true, completion: nil)
        }
    
}
