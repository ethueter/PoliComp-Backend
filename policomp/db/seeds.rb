# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Source.create(name: "Reuters", source_url: "reuters.com", source_id: "reuters")
Source.create(name: "Associated Press", source_url: "apnews.com", source_id: "associated-press")
Source.create(name: "Fox News", source_url: "foxnews.com", source_id: "fox-news")
Source.create(name: "National Review", source_url: "nationalreview.com", source_id: "national-review")
Source.create(name: "The New York Times", source_url: "nytimes.com", source_id: "the-new-york-times")
Source.create(name: "The Washington Times", source_url: "washingtontimes.com", source_id: "the-washington-times")
Source.create(name: "CNN", source_url: "cnn.com", source_id: "cnn")
Source.create(name: "Al Jazeera Englis", source_url: "aljazeera.com", source_id: "al-jazeera-english")
Source.create(name: "Huffintion Post", source_url: "huffpost.com", source_id: "huffington-post")
Source.create(name: "Breitbard", source_url: "breitbart.com", source_id: "breitbart-news-network")
