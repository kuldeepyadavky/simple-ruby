module ActiveRecord
    class Base
        def self.has_many(name, options)
            p [name, options]
        end
    end
end

class ApplicationRecord < ActiveRecord::Base
end

class User < ApplicationRecord
    attr_accessor :username, :password
    has_many :roles, :dependent => :destroy #macro methods
end

# User.has_many :admin, :dependent => :destroy

user1 = User.new
user1.username = "kuldeep"
user1.password = '3jjdjjd'

p user1