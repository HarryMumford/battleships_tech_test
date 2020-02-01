require 'game'

describe Game do
  before(:each) do
    @board = {
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
    }
  end 

  let(:ship_board) { double :ship_board, :place => @board}

  describe '#place' do
    it 'given a ship, direction and position it places a ship' do

      game = Game.new(ship_board)

      expect(game.place(1, 'h', 'a1')).to eq(@board)
    end
  end
end