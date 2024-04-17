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
		// your logic to decide which repository to use goes here
		// you could check for feature flags for example
		if item == "Teams" {
			return TeamsAmazingListRepository(
				repository: BasketballTeamsRepository()
			)
		}

		return PlayersAmazingListRepository(
			repository: BasketballTeamsRepository()
		)
	}
}
