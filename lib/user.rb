class User < ActiveRecord::Base
has_many :posts
has_many :lists, through: :posts
end