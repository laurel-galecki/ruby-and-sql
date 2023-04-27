# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# this says to delete all the rows in the table (but keeps the table itself)^
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

puts "There are #{Company.all.count} companies"

# 2. insert new rows in companies table

new_company = Company.new # building new row
#enter data:
new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "https://www.apple.com"
new_company.save

puts new_company.inspect
# inspect shows you the row contents

puts "There are #{Company.all.count} companies"

company2 = Company.new
company2["name"] = "Amazon"
company2["city"] = "Seattle"
company2["state"] = "WA"
company2["url"] = "https://www.amazon.com"
company2.save

puts company2.inspect
# inspect shows you the row contents

puts "There are #{Company.all.count} companies"

# 3. query companies table to find all row with California company

all_companies = Company.all
puts all_companies.inspect

cali_companies = Company.where({"state"=>"CA"})
puts cali_companies.inspect

puts "CA companies: #{cali_companies.count}"

# 4. query companies table to find single row for Apple

apple = Company.find_by({"name"=>"Apple"})
puts apple.inspect

# 5. read a row's column value

puts apple["url"]

# 6. update a row's column value
amazon = Company.find_by({"name"=>"Amazon"})
puts amazon["url"]
amazon["url"] = "www.Amazon.com"
amazon.save #updates row data

# 7. delete a row

#amazon = Company.find_by({"name" => "Amazon"})
#amazon.destroy

puts "There are #{Company.all.count} companies"