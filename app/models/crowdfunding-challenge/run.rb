require 'pry'

require_relative 'pledge.rb'
require_relative 'project.rb'
require_relative 'user.rb'


#seed data

mad_sci = User.new("Mad Scientist")
joe = User.new("Joe Bloggs")
bill_gates = User.new("Bill Gates")

proj_time = Project.new(title: "Time Machine", creator: mad_sci, pledge_goal_amount: 1000000)
proj_sandwich = Project.new(title: "Sandwich", creator: joe, pledge_goal_amount: 2)
proj_ray = Project.new(title: "Ray Gun", creator: mad_sci, pledge_goal_amount: 1000)

pledge1 = Pledge.new(amount: 10, user: joe, project: proj_ray)
pledge2 = Pledge.new(amount: 5, user: bill_gates, project: proj_sandwich)
pledge3 = Pledge.new(amount: 990, user: bill_gates, project: proj_ray)

binding.pry

0