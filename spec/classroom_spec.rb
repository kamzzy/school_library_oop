require_relative '../classroom'
describe Classroom do
  context 'When providing classroom information' do
    classroom = Classroom.new('classroom')
    it 'should create a new classroom with the given parameters' do
      expect(classroom).to be_an_instance_of Classroom
    end
    it 'should have a label' do
      classroom.label = 'classroom'
      expect(classroom.label).to eq('classroom')
    end
    it 'should have a students array' do
      expect(classroom.students).to eq([])
    end
  end
end
