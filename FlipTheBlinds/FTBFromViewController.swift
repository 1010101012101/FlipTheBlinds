//
//  FTBPresentingViewController.swift
//  FlipTheBlindsNonsense
//
//  Created by Joel Bell on 1/2/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

// MARK: Main

class FTBFromViewController: UIViewController {
    
    lazy var animationController = FTBAnimationController()
    
}

// MARK: View Controller Transitioning Delegate

extension FTBFromViewController: UIViewControllerTransitioningDelegate {
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        animationController.displayType = .present
        return animationController
        
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        animationController.displayType = .dismiss
        return animationController
        
    }
        
}


