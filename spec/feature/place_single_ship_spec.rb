describe 'feature: place single ship' do
  it 'scenario: player chooses a single ship in horizontal position' do
    view = "SS---------\n-----------\n-----------\n-----------\n-----------\n-----------\n-----------\n-----------\n-----------\n-----------\n"
    game = Game.new
    game.place(ship)
    expect { player_1.place(ship) }.to output(view).stdout
  end
end
