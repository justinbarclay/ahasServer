class CreateMedication < ActiveRecord::Migration[5.0]
  def change
    create_table :medications do |t|
      t.string     :name
      t.belongs_to :medical_record, index: true
      t.belongs_to :patient, index: true
      t.timestamps
    end
  end
end
