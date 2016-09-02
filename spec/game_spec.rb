require 'game'

describe Game do
  let(:grid) {double "grid"}

  describe '#drop' do
    it 'player one drops a piece' do
      allow(grid).to receive(:rows).and_return(
      [[1, "x", "x", "x", "x", "x"],
      ["x", "x", "x", "x", "x", "x"],
      ["x", "x", "x", "x", "x", "x"],
      ["x", "x", "x", "x", "x", "x"],
      ["x", "x", "x", "x", "x", "x"],
      ["x", "x", "x", "x", "x", "x"]])
      subject.drop(1)
      expect(subject.grid.rows[0][0]).to eq 1
    end

    it 'player two drops a piece' do
      allow(grid).to receive(:rows).and_return(
      [[1, 2, "x", "x", "x", "x"],
      ["x", "x", "x", "x", "x", "x"],
      ["x", "x", "x", "x", "x", "x"],
      ["x", "x", "x", "x", "x", "x"],
      ["x", "x", "x", "x", "x", "x"],
      ["x", "x", "x", "x", "x", "x"]])
      subject.drop(1)
      subject.drop(1)
      expect(subject.grid.rows[0][1]).to eq 2
    end
  end
end
