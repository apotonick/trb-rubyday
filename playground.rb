require "trailblazer/operation"
require 'active_record'

# class Create < Trailblazer::Operation
#   self.> :hello!
#   self.> :ciao!
#
#   def hello!(*)
#     p "hello"
#   end
#
#   def ciao!(*)
#     p "ciao"
#   end
# end
#
# Create.()


# Change the following to reflect your database settings
ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: 'db.sqlite3',
)

ActiveRecord::Schema.define do
  create_table :posts, force: true do |t|
    t.string :title
  end
end

class Post < ActiveRecord::Base
end

post = Post.create(title: "Trailblazer!")
p post.title
p Post.count
