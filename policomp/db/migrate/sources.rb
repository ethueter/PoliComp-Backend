require 'news-api'

newsapi = News.new("9663743b34524026854a945d187b6f6e")             

def get_all_sources
    sources = newsapi.get_sources(country: 'us', language: 'en')
    return sources
end