feature 'Viewing bookmarks' do
    scenario 'should visit index ' do
        visit('/')
        expect(page).to have_content "Bookmark Manager"
    end

    scenario 'should view a list of bookmarks in the bookmarks route' do
        visit('/bookmarks')
        expect(page).to have_content "BBC - https://www.bbc.co.uk/news"
        # expect(page).to have_content "Sky Sports News - https://www.skysports.com/"
    end


end