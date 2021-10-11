class Bookmarks 
attr_accessor :bookmark_list 

def initialize
    @bookmarks_list = []
    
    
end     

def create_bookmark(new_bookmark)
    @bookmark = new_bookmark
    @bookmarks_list.push(@bookmark)
end     




end     