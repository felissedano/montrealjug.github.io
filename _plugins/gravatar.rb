require 'digest/md5'

module Jekyll
  module GravatarFilter
    def gravatar(input)
      email_address = input.downcase.strip
      hash = Digest::MD5.hexdigest(email_address)
      "https://www.gravatar.com/avatar/#{hash}"
    end
  end
end

Liquid::Template.register_filter(Jekyll::GravatarFilter)
