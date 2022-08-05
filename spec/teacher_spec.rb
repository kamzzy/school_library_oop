require_relative '../teacher'
describe Teacher do
  context 'When providing teacher information' do
    teacher = Teacher.new('teacher', 22, 'unknown')

    it 'should create a new teacher with the given parameters' do
      expect(teacher).to be_an_instance_of Teacher
    end

    it 'should always have permission to use services' do
      expect(teacher.can_use_services).to eq true
    end
  end
end
