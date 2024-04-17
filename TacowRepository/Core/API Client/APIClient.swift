//
//  APIClient.swift
//  TacowRepository
//
//  Created by Franco Carbonaro on 2024-04-16.
//

import Foundation

struct APIClient {
	func getTeams(league: String) async -> [Team] {
		guard let url = Bundle.main.url(forResource: "nba-teams", withExtension: "json") else {
			return []
		}

		do {
			let data = try Data(contentsOf: url)
			let decoder = JSONDecoder()
			return try decoder
				.decode([Team].self, from: data)
				.sorted {
					$0.name < $1.name
				}
		}
		catch {
			return []
		}
	}

	func getRoster(teamID: String) async -> [Player] {
		guard let url = Bundle.main.url(forResource: "golden-state-players", withExtension: "json") else {
			return []
		}

		do {
			let data = try Data(contentsOf: url)
			let decoder = JSONDecoder()
			return try decoder
				.decode([Player].self, from: data)
				.sorted {
					$0.name < $1.name
				}
		}
		catch {
			return []
		}
	}

	func getSchedule(teamID: String) async -> [Event] {
		[]
	}
}
