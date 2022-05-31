require 'action_view'

    # t.date :birth_date, null:false
    # t.string :color, null:false
    # t.string :name, null:false
    # t.string :sex, null: false, limit: 1
    # t.text :description, null: false
    CAT_COLORS = %w(black white orange brown red purple yellow grey green pink blue).freeze
   
    # message: "%{value} is not a valid size" }

class Cat < ApplicationRecord
    CAT_COLORS = %w(black white orange brown red purple yellow grey green pink blue).freeze

    include ActionView::Helpers::DateHelper
    validates :birth_date, presence: true
    validates :color, presence: true, inclusion: {in: CAT_COLORS, message: "%{value} is not a valid color"}
    validates :name, presence: true
    validates :sex, presence: true, inclusion: {in: ['M', 'F'], message: "%{value} is not a valid sex"}
    validates :description, presence: true
    

    def age
        time_ago_in_words(birth_date)
    end

    def self.catcolors
        return CAT_COLORS
    end
end
