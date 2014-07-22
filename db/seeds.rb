League.delete_all
League.create([
    {
        id: 1,
        name: 'National Football League'
    }
])
puts "Leagues have been seeded."

Team.delete_all
Team.create([
    {
        id: 1,
        league_id: 1,
        city: 'Free',
        name: 'Agent',
        key: 'FA',
        conference: 'NFC',
        division: 'West',
    },
    {
        id: 2,
        league_id: 1,
        city: 'Arizona',
        name: 'Cardinals',
        key: 'ARI',
        conference: 'NFC',
        division: 'West',
    },
    {
        id: 3,
        league_id: 1,
        city: 'Atlanta',
        name: 'Falcons',
        key: 'ATL',
        conference: 'NFC',
        division: 'South',
    },
    {
        id: 4,
        league_id: 1,
        city: 'Baltimore',
        name: 'Ravens',
        key: 'BAL',
        conference: 'AFC',
        division: 'North',
    },
    {
        id: 5,
        league_id: 1,
        city: 'Buffalo',
        name: 'Bills',
        key: 'BUF',
        conference: 'AFC',
        division: 'East',
    },
    {
        id: 6,
        league_id: 1,
        city: 'Carolina',
        name: 'Panthers',
        key: 'CAR',
        conference: 'NFC',
        division: 'South',
    },
    {
        id: 7,
        league_id: 1,
        city: 'Chicago',
        name: 'Bears',
        key: 'CHI',
        conference: 'NFC',
        division: 'North',
    },
    {
        id: 8,
        league_id: 1,
        city: 'Cincinnati',
        name: 'Bengals',
        key: 'CIN',
        conference: 'AFC',
        division: 'North',
    },
    {
        id: 9,
        league_id: 1,
        city: 'Cleveland',
        name: 'Browns',
        key: 'CLE',
        conference: 'AFC',
        division: 'North',
    },
    {
        id: 10,
        league_id: 1,
        city: 'Dallas',
        name: 'Cowboys',
        key: 'DAL',
        conference: 'NFC',
        division: 'East',
    },
    {
        id: 11,
        league_id: 1,
        city: 'Denver',
        name: 'Broncos',
        key: 'DEN',
        conference: 'AFC',
        division: 'West',
    },
    {
        id: 12,
        league_id: 1,
        city: 'Detroit',
        name: 'Lions',
        key: 'DET',
        conference: 'NFC',
        division: 'North',
    },
    {
        id: 13,
        league_id: 1,
        city: 'Green Bay',
        name: 'Packers',
        key: 'GB',
        conference: 'NFC',
        division: 'North',
    },
    {
        id: 14,
        league_id: 1,
        city: 'Houston',
        name: 'Texans',
        key: 'HOU',
        conference: 'AFC',
        division: 'South',
    },
    {
        id: 15,
        league_id: 1,
        city: 'Indianapolis',
        name: 'Colts',
        key: 'IND',
        conference: 'AFC',
        division: 'South',
    },
    {
        id: 16,
        league_id: 1,
        city: 'Jacksonville',
        name: 'Jaguars',
        key: 'JAC',
        conference: 'AFC',
        division: 'South',
    },
    {
        id: 17,
        league_id: 1,
        city: 'Kansas City',
        name: 'Chiefs',
        key: 'KC',
        conference: 'AFC',
        division: 'West',
    },
    {
        id: 18,
        league_id: 1,
        city: 'Miami',
        name: 'Dolphins',
        key: 'MIA',
        conference: 'AFC',
        division: 'East',
    },
    {
        id: 19,
        league_id: 1,
        city: 'Minnesota',
        name: 'Vikings',
        key: 'MIN',
        conference: 'NFC',
        division: 'North',
    },
    {
        id: 20,
        league_id: 1,
        city: 'New England',
        name: 'Patriots',
        key: 'NE',
        conference: 'AFC',
        division: 'East',
    },
    {
        id: 21,
        league_id: 1,
        city: 'New Orleans',
        name: 'Saints',
        key: 'NO',
        conference: 'NFC',
        division: 'South',
    },
    {
        id: 22,
        league_id: 1,
        city: 'New York',
        name: 'Giants',
        key: 'NYG',
        conference: 'NFC',
        division: 'East',
    },
    {
        id: 23,
        league_id: 1,
        city: 'New York',
        name: 'Jets',
        key: 'NYJ',
        conference: 'AFC',
        division: 'East',
    },
    {
        id: 24,
        league_id: 1,
        city: 'Oakland',
        name: 'Raiders',
        key: 'OAK',
        conference: 'AFC',
        division: 'West',
    },
    {
        id: 25,
        league_id: 1,
        city: 'Philadelphia',
        name: 'Eagles',
        key: 'PHI',
        conference: 'NFC',
        division: 'East',
    },
    {
        id: 26,
        league_id: 1,
        city: 'Pittsburgh',
        name: 'Steelers',
        key: 'PIT',
        conference: 'AFC',
        division: 'North',
    },
    {
        id: 27,
        league_id: 1,
        city: 'San Diego',
        name: 'Chargers',
        key: 'SD',
        conference: 'AFC',
        division: 'West',
    },
    {
        id: 28,
        league_id: 1,
        city: 'San Francisco',
        name: '49ers',
        key: 'SF',
        conference: 'NFC',
        division: 'West',
    },
    {
        id: 29,
        league_id: 1,
        city: 'Seattle',
        name: 'Seahawks',
        key: 'SEA',
        conference: 'NFC',
        division: 'West',
    },
    {
        id: 30,
        league_id: 1,
        city: 'St. Louis',
        name: 'Rams',
        key: 'STL',
        conference: 'NFC',
        division: 'West',
    },
    {
        id: 31,
        league_id: 1,
        city: 'Tampa Bay',
        name: 'Buccaneers',
        key: 'TB',
        conference: 'NFC',
        division: 'South',
    },
    {
        id: 32,
        league_id: 1,
        city: 'Tennessee',
        name: 'Titans',
        key: 'TEN',
        conference: 'AFC',
        division: 'South',
    },
    {
        id: 33,
        league_id: 1,
        city: 'Washington',
        name: 'Redskins',
        key: 'WAS',
        conference: 'NFC',
        division: 'East',
    }
])
puts "Teams have been seeded."




# Get the Game Schedules
Schedule.delete_all
schedules = FantasyFootballNerd.schedule
schedules.each do |schedule|

    # gameId: '255'
    # gameWeek: '17'
    # gameDate: '2014-12-28'
    # awayTeam: ARI
    # homeTeam: SF
    # gameTimeET: 4:25 PM
    # tvStation: FOX

    away_team = Team.find_by_key(schedule['awayTeam'])
    home_team = Team.find_by_key(schedule['homeTeam'])

    Schedule.create(
        ffn_game_id: schedule['gameId'],
        year: 2014,
        week: schedule['gameWeek'],
        date: schedule['gameDate'],
        time: "#{schedule['gameTimeET']} ET",
        broadcaster: schedule['tvStation'],
        away_team_id: away_team.id,
        home_team_id: home_team.id
    )

end
puts "Schedules have been seeded."


# Get the Team Byes
Bye.delete_all
byes = FantasyFootballNerd.byes
byes.each do |bye, bye_weeks|
  bye_weeks.each do |bye_week|

    # team: CAR
    # byeWeek: '12'
    # displayName: Carolina Panthers

    team = Team.find_by_key(bye_week['team'])

    Bye.create(
        team_id: team.id,
        year: 2014,
        week: bye_week['byeWeek']
    )
  end
end
puts "Byes have been seeded."


Position.delete_all
Position.create([
    {
        id: 1,
        name: 'QB'
    },
    {
        id: 2,
        name: 'RB'
    },
    {
        id: 3,
        name: 'WR'
    },
    {
        id: 4,
        name: 'TE'
    },
    {
        id: 5,
        name: 'K'
    },
    {
        id: 6,
        name: 'DEF'
    }
])
puts "Positions have been seeded."


# Get all Players
Player.delete_all
players = FantasyFootballNerd.players
players.each do |player|

    #   playerId: '2684'
    #   active: '1'
    #   jersey: '0'
    #   lname: Murray
    #   fname: Patrick
    #   team: TB
    #   position: K
    #   height: 5-7
    #   weight: '182'
    #   dob: 0000-00-00
    #   college: Fordham

    position = Position.find_by_name(player['position'])
    team     = Team.find_by_key(player['team'])

    Player.create(
        league_id: 1,
        team_id: team.id,
        position_id: position.id,
        ffn_player_id: player['playerId'],
        college: player['college'],
        first_name: player['fname'],
        last_name: player['lname'],
        name: "#{player['fname']} #{player['lname']}",
        active: player['active'],
        uniform_number: player['jersey'],
        height: player['height'],
        weight: player['weight'],
        date_of_birth: player['dob'],
    )

end
puts "Players have been seeded."


# Player Ranks
PlayerRank.delete_all
player_ranks = FantasyFootballNerd.draft_rankings
player_ranks.each do |player_rank|

    # "playerId": "145",
    # "nerdRank": "1.249",
    # "positionRank": "1",
    # "overallRank": "1"

  player = Player.find_by_ffn_player_id(player_rank['playerId'])

  if player
    PlayerRank.create(
        player_id: player.id,
        year: 2014,
        position_rank: player_rank['positionRank'],
        overall_rank: player_rank['overallRank'],
    )
  else
     puts "Missing Player Rank: #{player_rank['playerId']}"
  end

end
puts "Player Ranks have been seeded."


# Draft Projections
PlayerProjection.delete_all
positions = Position.all
positions.each do |position|
  player_projections = FantasyFootballNerd.draft_projections(position.name)
  player_projections.each do |player_projection|

    # playerId: '1393'
    # completions: '1'
    # attempts: '0'
    # passingYards: '14'
    # passingTD: '0'
    # passingInt: '0'
    # rushYards: '0'
    # rushTD: '0'
    # fantasyPoints: '-2'

    player = Player.find_by_ffn_player_id(player_projection['playerId'])

    if player
      PlayerProjection.create(
          player_id: player.id,
          year: 2014,
          fantasy_points: player_projection['fantasyPoints'],
          completions: player_projection['completions'],
          attempts: player_projection['attempts'],
          pass_yards: player_projection['passingYards'],
          pass_tds: player_projection['passingTD'],
          pass_ints: player_projection['passingInt'],
          rush_yards: player_projection['rushYards'],
          rush_tds: player_projection['rushTD'],
      )
    else
      puts "Missing Player Projection: #{player_projection['playerId']}"
    end

  end
end
puts "Player Projections have been seeded."



# Get the Auction Values
PlayerAuctionValue.delete_all
player_auction_values = FantasyFootballNerd.auction
player_auction_values.each do |player_auction_value|
  # playerId: '2192'
  # minPrice: '2'
  # maxPrice: '2'
  # avgPrice: '2'

  player = Player.find_by_ffn_player_id(player_auction_value['playerId'])

  if player
    PlayerAuctionValue.create(
        player_id: player.id,
        year: 2014,
        min_price: player_auction_value['minPrice'].to_i,
        max_price: player_auction_value['maxPrice'].to_i,
        avg_price: player_auction_value['avgPrice'].to_i,
    )
  else
     puts "Missing Player Auction Info: #{player_auction_value['playerId']}"
  end
end
puts "Player Auction Values have been seeded."

FantasyDraftStyle.delete_all
FantasyDraftStyle.create([
    {
        id: 1,
        name: 'Auction'
    },
    {
        id: 2,
        name: 'Snake'
    },
])
puts "Fantasy Draft Styles have been seeded."










