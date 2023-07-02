//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Abdulkerim Can on 1.07.2023.
//

import Foundation

extension String {
    func capatalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
