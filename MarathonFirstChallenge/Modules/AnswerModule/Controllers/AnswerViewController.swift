//  AnswerViewController.swift
//  MarathonFirstChallenge


import Foundation
import UIKit

class AnswerViewController: UIViewController {
	enum Constants {
		static let backgroundImage: String = "background_image"
	}
	
	private lazy var answerButtonStackView = UIStackView()
	
	//MARK: - Create UI
	
	private lazy var backgroundImageView: UIImageView = {
		let imageView = UIImageView()
		imageView.image = UIImage(named: Constants.backgroundImage)
		imageView.contentMode = .scaleAspectFill
		return imageView
	}()
	private lazy var questionNumberLabel: UILabel = {
		let questionNum = UILabel ()
		questionNum.text = "QUESTION #1"
		questionNum.textColor = .white
		questionNum.alpha = 0.5
		return questionNum
	}()
	private lazy var currentMoneyLabel: UILabel = {
		let money = UILabel ()
		money.text = "$500"
		money.textColor = .white
		money.font = UIFont(name: "HelveticaNeue-Bold", size: 20)
		return money
	}()
	private lazy var timerImage: UIImageView = {
		var secondsTimer = UIImageView()
		secondsTimer.image = UIImage(named: "timer_image_regular")
		return secondsTimer
	}()
	private lazy var seconds: UILabel = {
		var time = UILabel ()
		time.text = "24"
		time.textColor = .white
		time.font = UIFont(name: "HelveticaNeue-Bold", size: 24)
		return time
	}()
	private lazy var questionText: UILabel = {
		var text = UILabel ()
		text.text = "How many continents are there on planet Earth?"
		text.textColor = .white
		text.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
		text.numberOfLines = 0
		text.textAlignment = .center
		return text
	}()
	
	private lazy var oneAnswerButton: AnswerButton = {
		let button = AnswerButton()
		button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
		return button
	}()
	private lazy var twoAnswerButton: AnswerButton = {
		let button = AnswerButton()
		button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
		return button
	}()
	private lazy var threeAnswerButton: AnswerButton = {
		let button = AnswerButton()
		button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
		return button
	}()
	private lazy var fourAnswerButton: AnswerButton = {
		let button = AnswerButton()
		button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
		return button
	}()

	private lazy var helpButton: UIButton = {
		let choice = UIButton (type: .system)
		choice.setBackgroundImage(UIImage(named: "help_50_50"), for: .normal)
		choice.addTarget(self, action: #selector(helpButtonTapped), for: .touchUpInside)
		return choice
	}()
	private lazy var audienceButton: UIButton = {
		let audience = UIButton (type: .system)
		audience.setBackgroundImage(UIImage(named: "help_audience"), for: .normal)
		audience.addTarget(self, action: #selector(audienceButtonTapped), for: .touchUpInside)
		return audience
	}()
	private lazy var callButton: UIButton = {
		let call = UIButton (type: .system)
		call.setBackgroundImage(UIImage(named: "help_call"), for: .normal)
		call.addTarget(self, action: #selector(callButtonTapped), for: .touchUpInside)
		return call
	}()
	
	
	//MARK: - Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupViews()
		setConstraints()
	}
	private func setupViews() {
		answerButtonStackView = UIStackView(arrangedSubviews: [
			oneAnswerButton,
			twoAnswerButton,
			threeAnswerButton,
			fourAnswerButton
		], axis: .vertical, spacing: 15)
		
		view.addSubview(backgroundImageView)
		view.addSubview(questionNumberLabel)
		view.addSubview(currentMoneyLabel)
		view.addSubview(timerImage)
		timerImage.addSubview(seconds)
		view.addSubview(questionText)
		view.addSubview(answerButtonStackView)
	}
	
	//MARK: - Button Function
	
	@objc private func backButtonTapped() {
		
	}
	
	@objc private func helpButtonTapped() {
		
	}
	
	@objc private func audienceButtonTapped() {
		
	}
	
	@objc private func callButtonTapped() {
		
	}
	
	//MARK: - setConstraints
	
	private func setConstraints() {
		backgroundImageView.frame = view.frame
		
		questionNumberLabel.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			questionNumberLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			questionNumberLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15)
		])
		
		currentMoneyLabel.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			currentMoneyLabel.centerXAnchor.constraint(equalTo: backgroundImageView.centerXAnchor),
			currentMoneyLabel.topAnchor.constraint(equalTo: questionNumberLabel.bottomAnchor, constant: 3)
		])

		timerImage.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			timerImage.topAnchor.constraint(equalTo: currentMoneyLabel.bottomAnchor, constant: 32),
			timerImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			timerImage.widthAnchor.constraint(equalToConstant: 93),
			timerImage.heightAnchor.constraint(equalToConstant: 47)
		])

		seconds.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			seconds.centerXAnchor.constraint(equalTo: timerImage.centerXAnchor, constant: 17),
			seconds.centerYAnchor.constraint(equalTo: timerImage.centerYAnchor)
		])

		questionText.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			questionText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			questionText.topAnchor.constraint(equalTo: timerImage.bottomAnchor, constant: 24),
			questionText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
			questionText.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: -30)
		])
		
		answerButtonStackView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			answerButtonStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
			answerButtonStackView.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: -30),
			answerButtonStackView.widthAnchor.constraint(equalToConstant: view.frame.width-60)
		])
	}
}

