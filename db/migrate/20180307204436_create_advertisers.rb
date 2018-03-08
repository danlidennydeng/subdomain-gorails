class CreateAdvertisers < ActiveRecord::Migration[5.0]
  def change
    create_table :advertisers do |t|
      t.string :email
      t.string :subdomain

      t.timestamps
    end
  end
end
