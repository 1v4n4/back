require 'httparty'

response = HTTParty.get('https://api.coastal.ca.gov/access/v1/locations')
beachesJSON = response.parsed_response
beachesJSON.each do |beach|
  Beach.create(
      name: beach['NameMobileWeb'],
      county: beach['COUNTY'],
      location: beach['LocationMobileWeb'],
      description: beach['DescriptionMobileWeb'],
      parking: beach['PARKING'],
      restrooms: beach['RESTROOMS'],
      photo1: beach['Photo_1'],
      photo2: beach['Photo_2'],
      photo3: beach['Photo_3'],
      photo4: beach['Photo_4']
    )
end