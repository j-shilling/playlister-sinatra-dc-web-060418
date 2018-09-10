module Slugifiable

  module INSTANCE
    def slug
      name.downcase.chars.map do |char|
        if char == ' '
          '-'
        else
          char
        end
      end.join
    end
  end

  module CLASS
    def find_by_slug(slug)
      self.find {
        |obj| obj.slug == slug
      }
    end
  end

end
