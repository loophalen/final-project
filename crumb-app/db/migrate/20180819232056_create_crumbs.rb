class CreateCrumbs < ActiveRecord::Migration[5.2]
  def change
    create_table :crumbs do |t|
      t.text :crumb

      t.timestamps
    end
  end
end
