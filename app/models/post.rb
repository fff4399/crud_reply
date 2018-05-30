class Post < ActiveRecord::Base
    has_many :replies, dependent: :destroy #게시물을 삭제할때 댓글도 같이 삭제되도록
end
