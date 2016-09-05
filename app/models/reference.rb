class Reference < ActiveRecord::Base

  validates :author_id, :subject_id, :recommended, :body, presence: true

  belongs_to :author,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User

  belongs_to :subject,
    primary_key: :id,
    foreign_key: :subject_id,
    class_name: :User

  
end
