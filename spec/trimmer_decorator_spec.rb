require_relative '../trimmer_decorator'
describe TrimmerDecorator do
  before do
    @nameable = double('nameable')
    allow(@nameable).to receive(:correct_name).and_return('unknown')
    @trimmer_decorator = TrimmerDecorator.new(@nameable)
  end
  describe 'create a new decorator' do
    it 'should have a name' do
      expect(@trimmer_decorator.correct_name).to eq('unknown')
    end
  end
end
