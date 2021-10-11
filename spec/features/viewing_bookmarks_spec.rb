feature 'Viewing bookmarks' do
    scenario 'should visit index page' do
        visit('/')
        expect(page).to have_content "Bookmark Manager"
    end
end