require './lib/class_name.rb'

describe ClassName do
  let(:bad_class) { 'class Book-ker {}' }
  let(:good_class) { 'class GoodName {}' }

  describe 'bad_class_name method' do
    it('Should return TRUE if WRONG Class name is supplied') do
      example = ClassName.bad_class_name?(bad_class)
      expect(example).to eq(true)
    end

    it('Should return FALSE if RIGHT Class name is supplied') do
      example = ClassName.bad_class_name?(good_class)
      expect(example).to eq(false)
    end
  end
end
