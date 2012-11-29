class Removetimestampsfromjointable < ActiveRecord::Migration

    def change
        change_table :roles_users do |t|
            t.remove :created_at
            t.remove :uppdated_at
        end
    end

end
