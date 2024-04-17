//
//  AmazingListRepository.swift
//  
//
//  Created by Franco Carbonaro on 2024-04-15.
//

import Foundation

public protocol AmazingListRepository {
	func getData() async -> [ListItem]
}
