require './lib/space_checker.rb'

describe SpaceChecker do
  let(:bad_spacing_1) { 'class  Book {}' }
  let(:bad_spacing_2) { 'var  number = 6' }
  let(:bad_spacing_3) { ' const number =  6' }
  let(:good_spacing) { 'class GoodName {}' }

  describe 'found_spaces method' do
    it('Should return TRUE if WRONG spacing is detected') do
      actual = SpaceChecker.found_spaces(bad_spacing_1)
      expect(actual).to eq(true)
    end

    it('Should return TRUE if WRONG spacing is detected') do
      actual = SpaceChecker.found_spaces(bad_spacing_2)
      expect(actual).to eq(true)
    end

    it('Should return TRUE if WRONG spacing is detected At begining of Line') do
      actual = SpaceChecker.found_spaces(bad_spacing_3)
      expect(actual).to eq(true)
    end

    it('Should return FALSE if RIGHT spacing is detected') do
      actual = SpaceChecker.found_spaces(good_spacing)
      expect(actual).to eq(false)
    end
  end
end
