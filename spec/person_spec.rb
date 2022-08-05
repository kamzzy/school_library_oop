require_relative '../person'
describe Person do
  before do
    @person = Person.new(22, 'unknown', parent_permission: true)
  end
  describe 'create a new person' do
    it 'should have a name' do
      @person.name = 'unknown'
      expect(@person.name).to eq('unknown')
    end
    it 'should have an age' do
      @person.age = 22
      expect(@person.age).to eq(22)
    end
    it 'should have a unique id' do
      expect(@person.id).to be_a(Integer)
    end
    it 'should have a rentals array' do
      expect(@person.rentals).to eq([])
    end
  end
end
