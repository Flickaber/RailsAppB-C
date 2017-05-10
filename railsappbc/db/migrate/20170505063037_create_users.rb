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
  reversible do |dir|
    dir.up do
      User.create_translation_table! :biography => {:type => :text, :null => true, :default => nil},
      :description => {:type => :text, :null => true, :default => nil},
      :comments => {:type => :text, :null => true, :default => nil}
    end

    dir.down do
      User.drop_translation_table!
    end
  end
end
