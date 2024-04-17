//
//  PlayersAmazingListRepository.swift
//  TacowRepository
//
//  Created by Franco Carbonaro on 2024-04-15.
//

import Foundation
import MyAmazingList

struct PlayersAmazingListRepository: AmazingListRepository {
	let repository: TeamsRepository

	// MARK: AmazingListRepository

	func getData() async -> [ListItem] {
		let teams = await repository.getRoster(teamID: "")

		return teams.map {
			ListItem(
				title: $0.name,
				subtitle: "#\($0.number) \($0.position)"
			)
		}
	}
}
