require 'faker'
require_relative '../app/models/task'

20.times do   
  Task.create!(:description => Faker::Company.bs)
end
