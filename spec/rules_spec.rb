require 'rules'

describe Rules do

  describe '#four_in_a_vertical_line?' do
    it 'player wins' do
      expect(subject.four_in_a_vertical_line? [
      [1,1,1,1,'x','x'],
      ['x','x','x','x','x','x'],
      ['x','x','x','x','x','x'],
      ['x','x','x','x','x','x'],
      ['x','x','x','x','x','x'],
      ['x','x','x','x','x','x']]).to eq true
    end

    it 'player does not win' do
      expect(subject.four_in_a_vertical_line? [
      [1,2,1,2,'x','x'],
      ['x','x','x','x','x','x'],
      [1,2,1,2,'x','x'],
      ['x','x','x','x','x','x'],
      ['x','x','x','x','x','x'],
      ['x','x','x','x','x','x']]).to eq false
    end
  end

  describe '#four_in_a_horizonal_line?' do
    it 'player wins' do
      expect(subject.four_in_a_horizontal_line? [
      [1,'x','x','x','x','x'],
      [1,'x','x','x','x','x'],
      [1,'x','x','x','x','x'],
      [1,'x','x','x','x','x'],
      [2,2,'x','x','x','x'],
      [2,2,'x','x','x','x']]).to eq true
    end

    it 'player does not win' do
      expect(subject.four_in_a_horizontal_line? [
      [1,'x','x','x','x','x'],
      [1,'x','x','x','x','x'],
      [2,'x','x','x','x','x'],
      [1,'x','x','x','x','x'],
      [2,2,'x','x','x','x'],
      [1,2,'x','x','x','x']]).to eq false
    end
  end

  # describe '#four_in_a_diagonal_line?' do
  #   it 'player wins' do
  #     expect(subject.four_in_a_vertical_line? [[1,2,1,2],[2,1,1,1],[1,2,1,2],[2,1,2,1],[],[]]).to eq true
  #   end
  # end


end
