class Employee < ApplicationRecord
    validates :name, presence: true
    validates :gender, presence: true
    validates :age, presence: true
    validates :workingPeriode, presence: true
    has_many :kendaraans
end
