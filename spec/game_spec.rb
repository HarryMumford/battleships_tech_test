require 'game'


describe Game do
  let(:board_with_1_length_ship) { board_with_1_length_ship = {
    a: ['s', '-', '-', '-', '-', '-', '-', '-', '-', '-', ],
    b: ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-', ],
    c: ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-', ],
    d: ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-', ],
    e: ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-', ],
    f: ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-', ],
    g: ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-', ],
    h: ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-', ],
    i: ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-', ],
    j: ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-', ],
  } }

  let(:ship_board) { double :ship_board, :place => board_with_1_length_ship}

  describe '#place' do
    it 'given a ship, direction and position it places a ship' do
      game = Game.new(ship_board)

      expect(game.place(1, 'h', 'a1')).to eq(board_with_1_length_ship)
    end
  end
end