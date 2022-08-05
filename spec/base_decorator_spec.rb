require_relative '../base_decorator'
describe BaseDecorator do
  before do
    @nameable = double('nameable')
    allow(@nameable).to receive(:correct_name).and_return('unknown')
    @base_decorator = BaseDecorator.new(@nameable)
  end
end
