class Appearance < ApplicationRecord

    belongs_to :guest
    belongs_to :episode

   
    # validates :rating, inclusion: { in: 1..5 }
    # (i used below instead because above default message was "rating not included", an i wasn't ble to succesfully add a custom error message as another argument)

    validates_numericality_of :rating, 
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 5,
    message: "must be between 1-5"

   
    
  
end
