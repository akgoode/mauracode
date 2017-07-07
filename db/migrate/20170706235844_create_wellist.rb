class CreateWellist < ActiveRecord::Migration
  def change
    create_table :wellists do |t|
      t.references :user, index: true, foreign_key: true
      t.references :vendor, index: true, foreign_key: true
    end
  end
end
