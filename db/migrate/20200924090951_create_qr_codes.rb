class CreateQrCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :qr_codes do |t|

      t.timestamps
    end
  end
end
