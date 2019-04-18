# require libraries/modules here
require 'nokogiri'
require 'pry'


def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  projects = {}
  
  kickstarter.css("li.project.grid_4").each do |project|
    projects[project] = {}
    binding.pry
  end
 
  # return the projects hash
  projects
  
  
  
  
end

# title = kickstarter.css("h2.bbcard_name strong a").text
# image_link = kickstarter.css("div.project-thumbnail a img").attribute("src").value
 
# description = kickstarter.css("p.bbcard_blurb").text
binding.pry