class ChangeOffencesColumnWhen < ActiveRecord::Migration
    def change
        change_column :offences, :when, :date
    end
end
