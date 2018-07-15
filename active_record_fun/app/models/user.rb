class User < ApplicationRecord
    has_many :documents, inverse_of: 'approver'
end
