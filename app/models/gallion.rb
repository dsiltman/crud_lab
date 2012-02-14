class Gallion < ActiveRecord::Base
    has_many :cannons
    validates :ship_name, :length => { :minimum => 10 }
end
