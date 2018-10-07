require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'Ted_Talks_Data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1', skip_blanks: true)

Category.destroy_all
Tag.destroy_all
Speaker.destroy_all
Tedtalk.destroy_all

csv.each do |row|
  # puts row.to_hash
  speaker = Speaker.find_or_create_by(name: row['main_speaker'])

  talk = Tedtalk.create( title:  row['title'],
    description: row['description'],
    url:         row['url'],
    views:       row['views'],
    speaker:     speaker)

  (row['tags']).split(",").map { |s|
    tag = Tag.find_or_create_by(name: s)

    category = Category.create(tag: tag, tedtalk: talk)
  }

  puts "#{talk.title} saved"

end

puts "There are now #{Speaker.count} rows in Speaker table"
puts "There are now #{Tag.count} rows in Tag table"
puts "There are now #{Tedtalk.count} rows in tedtalk table"
puts "There are now #{Category.count} rows in Category table"