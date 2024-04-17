//
//  TeamsRepository.swift
//  TacowRepository
//
//  Created by Franco Carbonaro on 2024-04-14.
//

import Foundation

protocol TeamsRepository {
	func getTeams(league: String) async -> [Team]

	func getRoster(teamID: String) async -> [Player]

	func getSchedule(teamID: String) async -> [Event]
}
