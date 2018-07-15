class Document < ApplicationRecord
    belongs_to :approver, class_name: 'User', foreign_key: 'user_id'
end
