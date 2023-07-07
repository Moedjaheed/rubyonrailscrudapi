class Kendaraan < ApplicationRecord
    validates :employee_id, presence: true
    validates :tipe_kendaraan, presence: true
    validates :merk_kendaraan, presence: true
    belongs_to :employee
end
