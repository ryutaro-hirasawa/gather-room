class AddSentenceToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :sentence, :string
  end
end
