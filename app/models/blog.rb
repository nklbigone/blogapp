class Blog < ApplicationRecord
    def self.count_titleA
        blogs = Blog.where(title: 'Content A')
        blogs.count
    end
end
