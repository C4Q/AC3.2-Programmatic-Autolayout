//
//  ViewController.swift
//  AC3.2-Programmatic-Autolayout
//
//  Created by Louis Tur on 12/12/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var blueView: UIView!
	@IBOutlet weak var pinkView: UIView!
	@IBOutlet weak var greenView: UIView!
	@IBOutlet weak var redView: UIView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// set all the hidden until we need to see one
		blueView.isHidden = true
		pinkView.isHidden = true
		redView.isHidden = true
		greenView.isHidden = true
		
		// These identifiers will help debug constraints breaking
		blueView.accessibilityIdentifier = "BLUE"
		pinkView.accessibilityIdentifier = "PINK"
		redView.accessibilityIdentifier = "RED"
		greenView.accessibilityIdentifier = "GREEN"
	}
	
	// MARK: - Exercise Solutions
	internal func exerciseOne() {
		redView.isHidden = false
		greenView.isHidden = false
		
		redView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		redView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
		redView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		redView.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: -4.0).isActive = true
		
		greenView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
		greenView.widthAnchor.constraint(equalTo: redView.widthAnchor).isActive = true
		greenView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		greenView.heightAnchor.constraint(equalTo: redView.heightAnchor).isActive = true
	}
	
	internal func exerciseTwo() {
		blueView.isHidden = false
		pinkView.isHidden = false
		redView.isHidden = false
		greenView.isHidden = false
		
		let blueConstraints = [
			blueView.topAnchor.constraint(equalTo: view.topAnchor),
			blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			blueView.trailingAnchor.constraint(equalTo: view.centerXAnchor),
			blueView.heightAnchor.constraint(equalTo: blueView.widthAnchor)
		]
		
		let pinkConstraints = [
			pinkView.heightAnchor.constraint(equalTo: blueView.widthAnchor),
			pinkView.widthAnchor.constraint(equalTo: blueView.widthAnchor),
			pinkView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
		]
		
		let redConstraints = [
			redView.heightAnchor.constraint(equalTo: blueView.widthAnchor),
			redView.widthAnchor.constraint(equalTo: blueView.widthAnchor),
			redView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
		]
		
		let greenConstraints = [
			greenView.leadingAnchor.constraint(equalTo: view.centerXAnchor),
			greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			greenView.topAnchor.constraint(equalTo: view.topAnchor),
			greenView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
		]
		
		let _ = [blueConstraints, pinkConstraints, redConstraints, greenConstraints].flatMap { $0.map { $0.isActive = true } }
	}
	
	internal func exerciseThree() {
		redView.isHidden = false
		greenView.isHidden = false
		
		redView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
		redView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
		redView.heightAnchor.constraint(equalTo: self.redView.widthAnchor).isActive = true
		
		greenView.centerYAnchor.constraint(equalTo: redView.centerYAnchor).isActive = true
		greenView.centerXAnchor.constraint(equalTo: redView.centerXAnchor).isActive = true
		greenView.heightAnchor.constraint(equalTo: redView.heightAnchor, multiplier: 0.5).isActive = true
		greenView.widthAnchor.constraint(equalTo: greenView.heightAnchor).isActive = true
	}
	
	internal func exerciseFour() {
		blueView.isHidden = false
		pinkView.isHidden = false
		redView.isHidden = false
		greenView.isHidden = false
		
		blueView.trailingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		blueView.widthAnchor.constraint(equalToConstant: 90.0).isActive = true
		blueView.heightAnchor.constraint(equalToConstant: 90.0).isActive = true
		blueView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
		
		redView.leadingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		redView.widthAnchor.constraint(equalToConstant: 90.0).isActive = true
		redView.heightAnchor.constraint(equalToConstant: 90.0).isActive = true
		redView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
		
		pinkView.bottomAnchor.constraint(equalTo: blueView.topAnchor).isActive = true
		pinkView.heightAnchor.constraint(equalTo: blueView.heightAnchor).isActive = true
		pinkView.leadingAnchor.constraint(equalTo: blueView.leadingAnchor).isActive = true
		pinkView.trailingAnchor.constraint(equalTo: redView.trailingAnchor).isActive = true
		
		greenView.topAnchor.constraint(equalTo: blueView.bottomAnchor).isActive = true
		greenView.heightAnchor.constraint(equalTo: blueView.heightAnchor).isActive = true
		greenView.leadingAnchor.constraint(equalTo: blueView.leadingAnchor).isActive = true
		greenView.trailingAnchor.constraint(equalTo: redView.trailingAnchor).isActive = true
	}
	
	internal func exerciseFive() {
		blueView.isHidden = false
		
		let label1 = UILabel()
		label1.text = "Label the First"
		label1.translatesAutoresizingMaskIntoConstraints = false
		
		let label2 = UILabel()
		label2.text = "Label Deux"
		label2.translatesAutoresizingMaskIntoConstraints = false
		
		let textField1 = UITextField()
		textField1.borderStyle = .bezel
		textField1.placeholder = "UserName"
		textField1.translatesAutoresizingMaskIntoConstraints = false
		
		let textField2 = UITextField()
		textField2.borderStyle = .bezel
		textField2.placeholder = "Password"
		textField2.translatesAutoresizingMaskIntoConstraints = false
		
		blueView.addSubview(label1)
		blueView.addSubview(label2)
		blueView.addSubview(textField1)
		blueView.addSubview(textField2)
		
		blueView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		blueView.bottomAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
		blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
		
		label1.topAnchor.constraint(equalTo: blueView.topAnchor, constant: 40.0).isActive = true
		label1.leadingAnchor.constraint(equalTo: blueView.leadingAnchor, constant: 8.0).isActive = true
		label1.setContentCompressionResistancePriority(UILayoutPriorityRequired, for: .horizontal)
		label1.setContentHuggingPriority(UILayoutPriorityRequired, for: .horizontal)
		
		label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 16.0).isActive = true
		label2.leadingAnchor.constraint(equalTo: label1.leadingAnchor).isActive = true
		label2.setContentCompressionResistancePriority(UILayoutPriorityRequired, for: .horizontal)
		label2.setContentHuggingPriority(UILayoutPriorityRequired, for: .horizontal)
		
		textField1.firstBaselineAnchor.constraint(equalTo: label1.firstBaselineAnchor).isActive = true
		textField1.trailingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: -8.0).isActive = true
		textField1.leadingAnchor.constraint(equalTo: label1.trailingAnchor, constant: 8.0).isActive = true
		
		textField2.firstBaselineAnchor.constraint(equalTo: label2.firstBaselineAnchor).isActive = true
		textField2.trailingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: -8.0).isActive = true
		textField2.leadingAnchor.constraint(equalTo: label2.trailingAnchor, constant: 8.0).isActive = true
	}
	
	// a simple answer
	internal func advanced() {
		blueView.isHidden = false
		pinkView.isHidden = false
		redView.isHidden = false
		greenView.isHidden = false
		
		let _ = [
			blueView.topAnchor.constraint(equalTo: view.topAnchor),
			blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			blueView.widthAnchor.constraint(equalTo: blueView.heightAnchor)
			].map { $0.isActive = true }
		
		let _ = [
			pinkView.topAnchor.constraint(equalTo: blueView.bottomAnchor),
			pinkView.leadingAnchor.constraint(equalTo: blueView.leadingAnchor),
			pinkView.heightAnchor.constraint(equalTo: blueView.heightAnchor, multiplier: 0.618),
			pinkView.widthAnchor.constraint(equalTo: pinkView.heightAnchor)
			].map { $0.isActive = true }
		
		let _ = [
			redView.leadingAnchor.constraint(equalTo: pinkView.trailingAnchor),
			redView.bottomAnchor.constraint(equalTo: pinkView.bottomAnchor),
			redView.heightAnchor.constraint(equalTo: pinkView.heightAnchor, multiplier: 0.618),
			redView.widthAnchor.constraint(equalTo: redView.heightAnchor)
			].map { $0.isActive = true }
		
		let _ = [
			greenView.trailingAnchor.constraint(equalTo: redView.trailingAnchor),
			greenView.bottomAnchor.constraint(equalTo: redView.topAnchor),
			greenView.heightAnchor.constraint(equalTo: redView.heightAnchor, multiplier: 0.618),
			greenView.widthAnchor.constraint(equalTo: greenView.heightAnchor)
			].map { $0.isActive = true }
		
		let purpleView = UIView()
		purpleView.backgroundColor = .purple
		purpleView.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(purpleView)
		
		let brownView = UIView()
		brownView.backgroundColor = .brown
		brownView.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(brownView)
		
		let orangeView = UIView()
		orangeView.backgroundColor = .orange
		orangeView.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(orangeView)
		
		let _ = [
			purpleView.trailingAnchor.constraint(equalTo: greenView.leadingAnchor),
			purpleView.topAnchor.constraint(equalTo: greenView.topAnchor),
			purpleView.heightAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 0.618),
			purpleView.widthAnchor.constraint(equalTo: purpleView.heightAnchor)
			].map { $0.isActive = true }
		
		let _ = [
			brownView.leadingAnchor.constraint(equalTo: purpleView.leadingAnchor),
			brownView.topAnchor.constraint(equalTo: purpleView.bottomAnchor),
			brownView.trailingAnchor.constraint(equalTo: purpleView.centerXAnchor),
			brownView.bottomAnchor.constraint(equalTo: greenView.bottomAnchor),
			
			orangeView.leadingAnchor.constraint(equalTo: brownView.trailingAnchor),
			orangeView.topAnchor.constraint(equalTo: brownView.topAnchor),
			orangeView.widthAnchor.constraint(equalTo: brownView.widthAnchor),
			orangeView.heightAnchor.constraint(equalTo: brownView.heightAnchor)
			].map { $0.isActive = true }
		
	}
	
}

