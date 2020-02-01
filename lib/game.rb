class Game
  def initialize(ship_board_instance = ShipBoard.new)
    @ship_board_instance = ship_board_instance
  end

  def place(ship, direction, position)
    @ship_board_instance.place(ship, direction, position)
  end
end