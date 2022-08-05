require_relative '../student'
describe Student do
  before do
    @student = Student.new(nil, 22, 'unknown', parent_permission: true)
  end
  describe 'create a new student' do
    it 'should have a name' do
      @student.name = 'unknown'
      expect(@student.name).to eq('unknown')
    end
    it 'should have an age' do
      @student.age = 22
      expect(@student.age).to eq(22)
    end
    it 'should have a unique id' do
      expect(@student.id).to be_a(Integer)
    end
    it 'should have a rentals array' do
      expect(@student.rentals).to eq([])
    end
  end
end
