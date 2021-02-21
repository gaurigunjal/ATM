class User < ApplicationRecord
    before_save :make_uppercase

    has_many :accounts

    validates :first_name, presence: true
    validates :middle_name, presence: true
    validates :last_name, presence: true
    
    def make_uppercase
        self.first_name.upcase!
        self.middle_name.upcase!
        self.last_name.upcase!
    end

    def fullname 
        "#{first_name} #{middle_name} #{last_name}"
    end
end
