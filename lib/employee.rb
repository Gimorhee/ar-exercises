class Employee < ActiveRecord::Base
        belongs_to :store

        validates :first_name, presence: true
        validates :last_name, presence: true
        validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
        validates :store, presence: true

        before_save :randomize_password

        private
        def randomize_password
                self.password = (0...8).map { ('a'..'z').to_a[rand(26)] }.join
        end
end