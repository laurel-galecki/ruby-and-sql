# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

employee1 = Salesperson.new
employee1["first_name"] = "Bob"
employee1["last_name"] = "Smith"
employee1["email"] = "bobsmith@gmail.com"
employee1.save

employee2 = Salesperson.new
employee2["first_name"] = "Jane"
employee2["last_name"] = "Jones"
employee2["email"] = "janejones@gmail.com"
employee2.save

# 3. write code to display how many salespeople rows are in the database

puts "There are #{Salesperson.all.count} salespeople"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

bob = Salesperson.find_by({"first_name"=>"Bob","last_name"=>"Smith"})
bob["email"] = "bsmith@gmail.com"
bob.save

puts bob["email"]

# CHALLENGE:
# 5. write code to display each salesperson's full name

#use loop
all_employees = Salesperson.all

for employee in all_employees
    first_name = employee["first_name"]
    last_name = employee["last_name"]
    puts "#{first_name} #{last_name}"
end

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
