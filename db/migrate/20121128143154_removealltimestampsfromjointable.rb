class Removealltimestampsfromjointable < ActiveRecord::Migration

    def change
        change_table :roles_users do |t|
            t.remove :updated_at
        end
    end

end
