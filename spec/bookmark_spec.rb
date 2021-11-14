describe '.all' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.all
  
      expect(bookmarks).to include "http://www.twitter.com"
      expect(bookmarks).to include "http://www.askjeeves.com"
      expect(bookmarks).to include "http://www.google.com"
    end
  end