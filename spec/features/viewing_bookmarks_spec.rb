feature 'Adding a new bookmark' do
    scenario 'A user can add a bookmark to Bookmark Manager' do
      visit('/bookmarks/new')
      fill_in('url', with: 'http://example.org')
      click_button('Submit')
  
      expect(page).to have_content 'http://example.org'
    end

    scenario 'Visiting /bookmarks shows me all the bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager')
      
           # Add the test data
      
      Bookmark.create(url: "http://www.makersacademy.com")
      Bookmark.create(url: "http://www.destroyallsoftware.com")
      Bookmark.create(url: "http://www.google.com")
      
      visit('/bookmarks')
    end   
  end
  

 