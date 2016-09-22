class CreateDiaryTags < ActiveRecord::Migration[5.0]
  def change
    create_table :diary_tags do |t|
      t.references :diary, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
