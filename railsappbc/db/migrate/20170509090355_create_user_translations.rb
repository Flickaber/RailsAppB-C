class CreateUserTranslations < ActiveRecord::Migration[5.0]
  # def change
  #   create_table :user_translations do |t|
  #   end
  # end
  def self.up
    I18n.with_locale(:fr) do
      User.create_translation_table!({
        :biography => :text,
        :description => :text,
        :comments => :text
      }, {
        :migrate_data => true,
        :remove_source_columns => true
      })
    end
  end

  def self.down
    User.drop_translation_table! :migrate_data => true
  end
end
