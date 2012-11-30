class User < ActiveRecord::Base
    attr_accessible :name, :login, :password, :password_confirmation, :role_ids

    has_secure_password
    validates_presence_of :password, :on => :create
    validates_presence_of :login
    validates_presence_of :name
    validates_uniqueness_of :login

    has_and_belongs_to_many :roles

    def admin?
        roles.include?(Role.find_by_name("Admin"))
    end

end
