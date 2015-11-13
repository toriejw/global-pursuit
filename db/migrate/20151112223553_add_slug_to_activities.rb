class AddSlugToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :slug, :text
  end
end
