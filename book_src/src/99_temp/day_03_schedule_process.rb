# encoding: UTF-8

require 'gooddata'

# Project ID
PROJECT_ID = 'we1vvh4il93r0927r809i3agif50d7iz'

PROCESS_ID = 'dc143d80-58a1-4acd-96b6-8d11fc4571de'
EXECUTABLE = './graph/graph.grf'

GoodData.with_connection do |c|
  GoodData.with_project(PROJECT_ID) do |project|
    date = '5 8 * * 7'
    project.create_schedule(PROCESS_ID, date, EXECUTABLE).save
  end
end