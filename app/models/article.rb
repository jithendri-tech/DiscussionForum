class Article < ApplicationRecord
    has_many :comments
    validates :title, presence: true,
                    length: { minimum: 5 }

def self.search(params)
    articles = Article.where("content LIKE ? or title LIKE ?", "%#{params[:search]}%",
    "%#{params[:search]}%") if params[:search].present?
    articles
    end
end
 