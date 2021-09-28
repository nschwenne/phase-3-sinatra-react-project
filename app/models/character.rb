class Character < ActiveRecord::Base
    belongs_to :weapon
    belongs_to :user

    def self.delete_by_id(num)
        self.destroy(num)
    end 

    def self.create_character
        Character.create(:name =>name )
    end 

    def update_with_attributes(attribute)
        self.update(attribute)
     end 
end 