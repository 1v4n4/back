require 'rails_helper'

RSpec.describe BeachesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/beaches').to route_to('beaches#index')
    end
    it 'routes to #create' do
      expect(post: '/beaches').to route_to('beaches#create')
    end
    it 'routes to #show' do
      expect(get: '/beaches/1').to route_to('beaches#show', id: '1')
    end
  end
end
