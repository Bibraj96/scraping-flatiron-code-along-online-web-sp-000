require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper

#Responsible for using Nokogiri and open-uri to grab the entire HTML document from the web page.
  def get_page
  end

#Responsible for using a CSS selector to grab all of the HTML elements that contain a course.
#The return value of this method should be a collection of Nokogiri XML elements, each of which describes a course offering.
  def get_courses
  end

#Responsible for actually instantiating Course objects and giving
#Each course object the correct title, schedule and description attribute that we scraped from the page.
  def make_courses
  end

#Calls on .make_courses and then iterates over all of the
#Courses that get created to puts out a list of course offerings.
  def print_courses
    self.make_courses
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
