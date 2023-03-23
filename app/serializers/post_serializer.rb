class PostSerializer < ActiveModel::Serializer
    attributes :title, :content, :short_content, :tags

    def short_content
      "#{object.content[0..39]}..."
    end

  belongs_to :author
  has_many :post_tags
  has_many :tags, through: :post_tags
end
