def extract_urls(text)
  pattern = /\w+:\/\/[w{3}\.]?\w+[\.\w+]+[^\.\s]+/
  urls = text.scan(pattern)
  puts urls.flatten

end
sample_text = "Visit our site at http://www.example.org for more
information. Check out our search page at
https://example.com/search?q=ruby+regex. Don’t forget to ftp our
resources at ftp://example.com/resources."

extract_urls(sample_text)
