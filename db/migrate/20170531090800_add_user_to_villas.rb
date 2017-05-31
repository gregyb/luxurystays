class AddUserToVillas < ActiveRecord::Migration[5.1]
  def change
    add_reference :villas, :user, index: true
  end
end
