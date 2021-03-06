require 'ship_board'

describe ShipBoard do
  describe '#place' do
    it 'given a ship, direction and position it places a ship' do
      board_with_1_length_ship = {
        a: ['s', '-', '-', '-', '-', '-', '-', '-', '-', '-'],
        b: ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-'],
        c: ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-'],
        d: ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-'],
        e: ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-'],
        f: ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-'],
        g: ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-'],
        h: ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-'],
        i: ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-'],
        j: ['-', '-', '-', '-', '-', '-', '-', '-', '-', '-']
      }

      ship_board = ShipBoard.new

      expect(ship_board.place(1, 'h', [:a, 0])).to eq(board_with_1_length_ship)
    end
  end
end