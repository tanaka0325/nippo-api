class ChangeColumnReport < ActiveRecord::Migration[5.0]
  def change
    change_column(:reports, :date, :date,:null => false)
    change_column(:reports, :title, :string,:null => false)
    change_column(:reports, :body, :text,:null => false)
    change_column(:reports, :status, :integer,:null => false, :default => 1)
  end
end
