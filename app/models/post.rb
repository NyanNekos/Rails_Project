# frozen_string_literal: true

class Post < ApplicationRecord
  # needs the title and description to be filled in before submitting
  validates :title, presence: true
  validates :Description, presence: true
  has_rich_text :Description
  has_one :action_text_rich_text, class_name: 'ActionText::RichText', as: :record

  # post is by the user only belong to 1 user
  belongs_to :user

  # using destroy instead of delete so it removes the comments rather having floating comments
  has_many :comments, dependent: :destroy
end
