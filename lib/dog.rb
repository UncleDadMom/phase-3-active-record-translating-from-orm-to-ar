require "active_record"
require "pry"

ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "db/dogs.sqlite"
  )

sql = <<-SQL
CREATE TABLE IF NOT EXISTS dogs (
  id INTEGER PRIMARY KEY,
  name TEXT,
  breed TEXT
)
SQL
ActiveRecord::Base.connection.execute(sql)

class Dog < ActiveRecord::Base
    # def initialize(attributes) 
    #     attributes.each do |key, value| 
    #         if self.respond_to?("#{key.to_s}=")
    #             self.send("#{key.to_s}=", value) 
    #         end 
    #     end
    # end
end

binding.pry