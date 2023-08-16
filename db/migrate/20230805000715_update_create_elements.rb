class UpdateCreateElements < ActiveRecord::Migration[7.0]
  def change
    add_column :elements, :created_at, :datetime
    add_column :elements, :updated_at, :datetime
  end
end
