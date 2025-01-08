//
//  ColorType.swift
//  Tracker
//
//  Created by Илья Дышлюк on 01.01.2025.
//

import Foundation
import UIKit

class ColorCell: UICollectionViewCell {
    
    private let colorView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        return view
    }()

    private var cellColor: UIColor? // Добавляем свойство для хранения цвета
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        
        layer.cornerRadius = 10
        layer.borderWidth = 3
        layer.borderColor = UIColor.clear.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.addSubview(colorView)
        
        NSLayoutConstraint.activate([
            colorView.topAnchor.constraint(equalTo: contentView.topAnchor),
            colorView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            colorView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            colorView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    func configure(with color: UIColor) {
        colorView.backgroundColor = color
        cellColor = color  // Сохраняем цвет
    }

    override var isSelected: Bool { // Используем свойство isSelected
        didSet {
            setSelected(isSelected)
        }
    }
    
    func setSelected(_ selected: Bool) {
        layer.borderColor = selected ? cellColor?.cgColor : UIColor.clear.cgColor // Используем сохранённый цвет
    }
}
