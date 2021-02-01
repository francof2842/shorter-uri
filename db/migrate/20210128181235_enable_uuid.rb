class EnableUuid < ActiveRecord::Migration[6.1]
  def change
    #enable encryption for UUID for postgres specific
    enable_extension 'pgcrypto'
  end
end
