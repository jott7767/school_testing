class School < ActiveRecord::Base
  validates_presence_of :name, :high_grade, :low_grade
end
