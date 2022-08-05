require_relative '../book'
describe Book do
  before do
    @book = Book.new('title', 'author')
  end
  describe 'create a new book' do
    it 'should have a title' do
      @book.title = 'title'
      expect(@book.title).to eq('title')
    end
    it 'should have an author' do
      @book.author = 'author'
      expect(@book.author).to eq('author')
    end
    describe 'add a rental' do
      it 'should have a rentals array' do
        expect(@book.rentals).to eq([])
      end
    end
  end
end
