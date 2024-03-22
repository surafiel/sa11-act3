def extract_urls(text)
    pattern = %r{(https?|ftp)://\S+} # Regular expression pattern to match URLs starting with http, https, or ftp
    urls = text.scan(pattern)
    urls.each { |url| puts url }
  end
  
  sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex. Don’t forget to ftp our resources at ftp://example.com/resources."
  
  extract_urls(sample_text)