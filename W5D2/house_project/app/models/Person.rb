class Person < ApplicationRecord
    validates :name, :house_id, presence: true


    belongs_to :house,
    primary_key: :id,
    foreign_key: :people_id,
    class_name: House
end 