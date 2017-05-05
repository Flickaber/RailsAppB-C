class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :firstname, :limit => 255, :null => false, :default => nil
      t.string :lastname, :limit => 255, :null => false, :default => nil
      t.string :email, :limit => 255, :null => false, :default => nil, :uniqueness => true
      t.text :biography, :null => true, :default => nil
      t.text :description, :null => true, :default => nil
      t.text :comments, :null => true, :default => nil
      t.float :price, :null => false, :default => nil

      t.timestamps
    end
  end
end
