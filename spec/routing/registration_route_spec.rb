require 'rails_helper'

RSpec.describe RegistrationsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/registrations').to route_to('registrations#index')
    end
    it 'routes to #create' do
      expect(post: '/registrations').to route_to('registrations#create')
    end
  end
end