class Article
  include Mongoid::Document

  field :title, :type => String
  field :body,  :type => String

  belongs_to :author
  has_and_belongs_to_many :tags

  embeds_many :notes
  accepts_nested_attributes_for :notes, :allow_destroy => true
end
