require './lib/load_file.rb'

describe LoadFile do
  let(:js_file) { LoadFile.new('./spec/example.js') }

  describe 'def file_content method' do
    it('Should Parse the JS file passed and set the Filename for each line') do
      actual = js_file.lines[0].filename
      expect(actual).to eq('./spec/example.js')
    end
  end
end
