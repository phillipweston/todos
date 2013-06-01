require_relative 'app/models/task'
require_relative 'config/application'
require_relative 'app/view/ui'

include UI

argument = ARGV.slice!(0)
task = ARGV.join(" ")

send_args = [argument]
send_args << task unless task.empty?

if Task.respond_to?(argument)
  UI.send(*send_args)
  Task.send(*send_args)
else
  what?
end

