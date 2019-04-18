require 'game'

describe "Game" do
  it 'should return 0-0 when initialize' do
    game = Game.new
    expect(game.get_score).to eq('0-0')
  end

  it 'should return 15-0 after first_player scored' do
    game = Game.new
    game.player1_scored?
    expect(game.get_score).to eq('15-0')
  end

  it 'should return 0-15 after second_player scored' do
    game = Game.new
    game.player2_scored?
    expect(game.get_score).to eq('0-15')
  end

  it 'should return 15-15 after first_player and second_player scored' do
    game = Game.new
    game.player2_scored?
    game.player1_scored?
    expect(game.get_score).to eq('15-15')
  end

  it 'should return 30-0 after first_player scored twice' do
    game = Game.new
    game.player1_scored?
    game.player1_scored?
    expect(game.get_score).to eq('30-0')
  end
end
