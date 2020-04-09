require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper

  def get_page
  end

  def get_courses
  end

  def make_courses
  end

  def print_courses #Calls on .make_courses and then iterates over all of the
    self.make_courses #courses that get created to puts out a list of course offerings.
      self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

end
