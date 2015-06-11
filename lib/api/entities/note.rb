module Api
  module Entities
    class Note < Grape::Entity
      expose :id
      expose :title
      expose :content
    end
  end
end
