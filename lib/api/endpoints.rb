module Api
  class Endpoints < Grape::API
    mount Api::Notes
  end
end
