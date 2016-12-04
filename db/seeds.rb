# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Mood.destroy_all
Quote.destroy_all

Mood.create!([{mood_choice: "Disappointment"}, {mood_choice:"Sorrow"}, {mood_choice:"Insult"}, {mood_choice: "Depressed"}, {mood_choice:"Agony"}])

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'quotes_mood.csv'))
  csv_text = csv_text.force_encoding('iso-8859-1').encode('utf-8')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Quote.new
  t.body = row['body']
  t.author = row['author']
  t.quote_type = row['quote_type']
  m=Mood.find_by(:mood_choice => row['mood_choice'] )
  t.mood_id=m.id
  t.save
  puts "#{t.body}, #{t.author}, #{t.quote_type} saved"


end

puts "There are now #{Quote.count} rows in the transactions table"
