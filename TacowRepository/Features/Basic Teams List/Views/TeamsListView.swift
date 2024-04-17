//
//  TeamsList.swift
//  TacowRepository
//
//  Created by Franco Carbonaro on 2024-04-14.
//

import SwiftUI

struct TeamsListView: View {
	@State private var teams: [Team] = []

	let viewModel: TeamsListViewModel

	var body: some View {
		VStack {
			List(teams, id: \.self) { team in
				VStack(alignment: .leading) {
					Text(team.name)
				}
			}
		}
		.task {
			teams = await viewModel.getTeams()
		}
	}
}

#Preview {
	TeamsListView(
		viewModel: TeamsListViewModel(repository: HockeyTeamsRepository())
	)
}

