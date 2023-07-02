//
//  TitleTableViewCell.swift
//  Netflix Clone
//
//  Created by Abdulkerim Can on 2.07.2023.
//

import UIKit

class TitleTableViewCell: UITableViewCell {
    
    static let identifier = "TitleTableViewCell"
    
    private let playTitleButton: UIButton = {
        let button = UIButton()
        let buttonImage = UIImage(systemName: "play.circle",withConfiguration: UIImage.SymbolConfiguration(pointSize: 30))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(buttonImage, for: .normal)
        button.tintColor = .white
        return button
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let titlePosterUIImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.contentMode = .scaleAspectFit
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.clipsToBounds = true
        return imageview
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titlePosterUIImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(playTitleButton)
        
        applyConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func applyConstraints() {
        let titlePosterUIImageViewConstraints = [
            titlePosterUIImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            titlePosterUIImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            titlePosterUIImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            titlePosterUIImageView.widthAnchor.constraint(equalToConstant: 100)
        ]
        
        let titleLabelConstraints = [
            titleLabel.leadingAnchor.constraint(equalTo: titlePosterUIImageView.trailingAnchor, constant: 20),
            titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ]
        
        let playTitleButtonConstraints = [
            playTitleButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant:  -20),
            playTitleButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ]
        
        NSLayoutConstraint.activate(titlePosterUIImageViewConstraints)
        NSLayoutConstraint.activate(titleLabelConstraints)
        NSLayoutConstraint.activate(playTitleButtonConstraints)
    }
    
    public func configure(with model: TitleViewModel) {
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(model.posterURL)") else {
            return
        }
        titlePosterUIImageView.sd_setImage(with: url, completed: nil)
        titleLabel.text = model.titleName
    }
}
