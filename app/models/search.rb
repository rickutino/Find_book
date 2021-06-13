class Search < ApplicationRecord
  def search_book
    book = Book.all 

    book = book.where(['title LIKE :title OR description Like :title', title: "%#{title}%",  title: "%#{title}%"]) if title.present?
    book = book.where(category_id: category_id) if category_id.present?

    return book
end 

end
