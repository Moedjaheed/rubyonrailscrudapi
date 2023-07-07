class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.integer :workingPeriode

      t.timestamps
    end
  end
end

class CreateKendaraans < ActiveRecord::Migration[5.2]
  def change
    create_table :kendaraans do |t|
      t.string :tipe_kendaraan
      t.string :merk_kendaraan
      t.references :employee, foreign_key: true
      
      t.timestamps
    end
  end
end