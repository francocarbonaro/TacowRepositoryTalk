//
//  AmazingListRepositoryFactory.swift
//  TacowRepository
//
//  Created by Franco Carbonaro on 2024-04-15.
//

import Foundation
import MyAmazingList

enum AmazingListRepositoryFactory {
	static func makeRepository(item: String) -> AmazingListRepository {
		// feature flag goes here
		if item == "Teams" {
			return TeamsAmazingListRepository()
		}

		return PlayersAmazingListRepository()
	}
}
