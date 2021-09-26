require 'rails_helper'

RSpec.describe FavsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/favs').to route_to('favs#index')
    end
    it 'routes to #create' do
      expect(post: '/favs').to route_to('favs#create')
    end
    it 'routes to #destroy' do
      expect(delete: '/favs/1').to route_to('favs#destroy', id: '1')
    end
  end
end
