class AddPrimaryOrganization < ActiveRecord::Migration
  def change
    change_table(:people) do |t|
      t.column :primary_membership_id, :integer
    end
  end
end
