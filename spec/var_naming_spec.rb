require './lib/var_naming.rb'

describe VarNaming do
  let(:bad_name) { 'var 8mega = 8' }
  let(:good_name) { 'let goodName = 8' }

  describe 'bad_var_case method' do
    it('Should return TRUE if WRONG Variable is supplied') do
      actual = VarNaming.bad_var_case?(bad_name)
      expect(actual).to eq(true)
    end

    it('Should return FALSE if RIGHT Variable is supplied') do
      actual = VarNaming.bad_var_case?(good_name)
      expect(actual).to eq(false)
    end
  end
end
