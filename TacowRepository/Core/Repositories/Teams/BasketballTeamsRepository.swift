//
//  DefaultTeamsRepository.swift
//  TacowRepository
//
//  Created by Franco Carbonaro on 2024-04-14.
//

import Foundation

struct BasketballTeamsRepository: TeamsRepository {
	private let apiClient = APIClient()

	func getTeams(league: String) async -> [Team] {
		await apiClient.getTeams(league: league)
	}

	func getRoster(teamID: String) async -> [Player] {
		await apiClient.getRoster(teamID: teamID)
	}

	func getSchedule(teamID: String) async -> [Event] {
		await apiClient.getSchedule(teamID: teamID)
	}
}
