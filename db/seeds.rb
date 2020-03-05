
5.times do
 chart = Chart.create(
   name: Faker::Coffee.blend_name
 )
  3.times do
    artist = Artist.create(
      name: Faker::TvShows::RickAndMorty.character,
      genre: Faker::TvShows::StarTrek.specie,
      group: false,
      chart_id: chart.id
    )
    Song.create(
      name: Faker::Kpop.boy_bands,
      album: Faker::Kpop.ii_groups,
      length: Faker::Code.npi,
      artist_id: artist.id
    )
  end
end
puts 'Data has been seeded'
