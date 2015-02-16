ActiveRecord::Base.transaction do
  Spree::Country.all.each do |country|
    carmen_country = Carmen::Country.named(country.name)
    @states ||= []
    if carmen_country.subregions?
      carmen_country.subregions.each do |subregion|
        @states << {
            name: subregion.name,
            abbr: subregion.code,
            country: country
        }  unless country.states.find_by(name: subregion.name)
      end
    end
  end

  puts "States to create: #{@states.count}"
  Spree::State.create!(@states)
end
