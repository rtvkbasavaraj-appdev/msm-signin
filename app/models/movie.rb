# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  director    :string
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  has_many(:characters, { :class_name => "Character", :foreign_key => "movie_id", :dependent => :nullify })
  has_many(:cast, { :through => :characters, :source => :actor })
end
