//
//  MockAmazingListRepository.swift
//  
//
//  Created by Franco Carbonaro on 2024-04-15.
//

import Foundation
@testable import MyAmazingList

struct MockAmazingListRepository: AmazingListRepository {
	func getData() async -> [ListItem] {
		[
			ListItem(title: "Friends", subtitle: "Rating: 5"),
			ListItem(title: "Breaking Bad", subtitle: "Rating: 4.5"),
			ListItem(title: "Parks and Recreation", subtitle: "Rating: 4.29"),
			ListItem(title: "The Office", subtitle: "Rating: 4.75"),
			ListItem(title: "Gilmore Girls", subtitle: "Rating: 4.11"),
			ListItem(title: "Game of Thrones", subtitle: "Rating: 4.23"),
			ListItem(title: "The Wire", subtitle: "Rating: 4.92"),
			ListItem(title: "Bates Motel", subtitle: "Rating: 4.40"),
		]
	}
}
