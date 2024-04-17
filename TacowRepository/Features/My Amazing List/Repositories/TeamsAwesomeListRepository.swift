//
//  TeamsAmazingListRepository.swift
//  TacowRepository
//
//  Created by Franco Carbonaro on 2024-04-15.
//

import Foundation
import MyAmazingList

struct TeamsAmazingListRepository: AmazingListRepository {
	let repository: TeamsRepository

	// MARK: AmazingListRepository

	func getData() async -> [ListItem] {
		let teams = await repository.getTeams(league: "nba")

		return teams.map {
			ListItem(
				title: $0.name,
				subtitle: "\($0.conference) | \($0.division)"
			)
		}
	}
}
