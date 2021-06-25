# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.create!(
  [
    {
		name: 'タイタニック',
		year: '1234',
		description: '豪華客船が沈み込むまで.....',
		image_url: 'https://picsum.photos/200/300?grayscale',
		is_showing: true,
		created_at: "2019-05-02 12:48:35",
		updated_at: "2019-05-02 12:48:35"
    },
    {
		name: 'タイタニック2',
		year: '2345',
		description: '豪華客船が沈み込むまで............',
		image_url: 'https://picsum.photos/200/300?grayscale',
		is_showing: false,
		created_at: "2020-05-02 12:48:35",
		updated_at: "2021-05-02 12:48:35"
    }
  ]
)
