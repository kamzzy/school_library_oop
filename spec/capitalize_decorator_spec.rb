require_relative '../capitalize_decorator'
describe CapitalizeDecorator do
  before do
    @nameable = double('nameable')
    allow(@nameable).to receive(:correct_name).and_return('unknown')
    @capitalize_decorator = CapitalizeDecorator.new(@nameable)
  end
  describe 'create a new decorator' do
    it 'should have a name' do
      expect(@capitalize_decorator.correct_name).to eq('Unknown')
    end
  end
end
