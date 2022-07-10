//
//  HeaderView.swift
//  NewsApp
//
//  Created by Роман Замолотов on 09.07.2022.
//

import UIKit

final class HeaderView: UIView {
    
    private var fontSize: CGFloat = 0.0
    
    private lazy var headingLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "News"
        view.font = UIFont.boldSystemFont(ofSize: fontSize)
        return view
    }()
    
    private lazy var headerCircleImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
        let config = UIImage.SymbolConfiguration(pointSize: fontSize, weight: .bold)
        view.image = UIImage(systemName: "", withConfiguration: config) // найти фотку для новостей
        return view
    }()
    
    private lazy var plusImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        let config = UIImage.SymbolConfiguration(pointSize: fontSize, weight: .bold)
        view.image = UIImage (systemName: "plus", withConfiguration: config)?.withRenderingMode(.alwaysOriginal)
        return view
    }()
    
    private lazy var headerStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [headerCircleImage, headingLabel, plusImage])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        return view
    }()
    
    private lazy var subheadlineLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.font = view.font.withSize(fontSize)
        view.text = "Top Headlines"
        view.textColor = .gray
        return view
    }()
    
    init (fontSize: CGFloat) {
        self.fontSize=fontSize
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        
        addSubview(headerStackView)
        addSubview(subheadlineLabel)
        
        setupConstrains()
    }
    
    func setupConstrains() {
        //news header
        NSLayoutConstraint.activate([
            headerStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            headerStackView.topAnchor.constraint(equalTo: topAnchor)
        ])
        
        //subheadline
        NSLayoutConstraint.activate([
            subheadlineLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            subheadlineLabel.topAnchor.constraint(equalTo: headerStackView.bottomAnchor, constant: 8),
            subheadlineLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
    }
}
