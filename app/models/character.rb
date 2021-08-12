# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  belongs_to(:movie, { :required => true, :class_name => "Movie", :foreign_key => "movie_id" })
  belongs_to(:movie, { :required => true, :class_name => "Movie", :foreign_key => "movie_id" })
end
