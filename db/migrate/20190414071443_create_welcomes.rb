class CreateWelcomes < ActiveRecord::Migration[5.2]
  def change
    create_table :welcomes do |t|

      t.string :name
      t.string :email
      t.string :subject
      t.string :message
      t.string :created_at
      
    end
  end
end
