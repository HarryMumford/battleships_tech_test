require 'cli'

describe CLI do
  describe '#run' do
    it 'outputs a prompt for placing a ship' do
      cli = CLI.new
      prompt = "To place ship: type 'v, h' for vertical or horizontal '1-4' for size followed by the coordinates (a-j, 1-8) e.g. v1a\n"
      expect{ cli.run }.to output(prompt).to_stdout
    end
  end
end