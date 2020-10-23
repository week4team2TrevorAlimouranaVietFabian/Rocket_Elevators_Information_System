class Customer < ApplicationRecord
    belongs_to :admin_user

    has_many :buildings
    def display_name
        "#{company_name}"
    end
    belongs_to :address
    belongs_to :employee
end
