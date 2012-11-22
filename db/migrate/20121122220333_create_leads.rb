class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :email, :null => false
      t.string :product, :null => false, :default => ""

      t.timestamps :null => false
    end
  end
end
