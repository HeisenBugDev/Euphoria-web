class FixReservedWordType < ActiveRecord::Migration
  def change
    rename_column :stats, :type, :identifier
  end
end
