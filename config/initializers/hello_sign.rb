require 'hello_sign'
HelloSign.configure do |config|
  config.api_key = '6ff919afef247da1ea87c4e207bdf9ee4ecfd3e283c1aa90cf623cf1732ea303'
  config.client_id = '7f91612ee160dd56bd899cd1688bbefc'
  config.client_secret = 'a403773af1e1aee206976257a47249cf'
end

PDF_FILE = ['https://bitcoin.org/bitcoin.pdf']
