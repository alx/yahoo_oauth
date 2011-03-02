#
# A Ruby Library for Yahoo! Delicious API
#
# Author::    David Li (mailto:taweili@yahoo.com)
# Copyright:: Copyright (c) 2010 David Li
# License::   LGPL

# Provides Delicious API
# http://developer.yahoo.com/social/rest_api_guide/social_dir_api.html
module YahooOAuth
  class Client
    
    def escape(value)
      URI::escape(value.to_s, /[^a-zA-Z0-9\-\.\_\~]/)
    end
    
    def posts_add(parameters)
      query = parameters.map { |k, v| "#{escape(k.to_s)}=#{escape(v)}" } * '&'
      components = ['http://api.del.icio.us/v2/posts/add']
      components << query unless query.empty?
      response = access_token.get(components * '?')
      unless response.is_a?(Net::HTTPOK)
        raise "HTTP response code: #{response.code}"
      end
      matches = Regexp.new('<result code="([^\"]*)" />').match(response.body)
      unless matches && matches[1] == 'done'
        raise "Delicious API code: '#{matches[1]}'"
      end
      response
    end
    
  end
end
