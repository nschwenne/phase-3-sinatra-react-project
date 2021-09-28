class User < ActiveRecord::Base
    has_many :characters

    def how_many_characters()
        self.characters.length
    end 

end 