class CreateSubscribes < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribes do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
