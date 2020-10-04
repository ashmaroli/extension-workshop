# frozen_string_literal: true

module Jekyll
  module Assets
    class Tag < Liquid::Tag
      def render(context)
        ""
      end
    end
  end
end

Liquid::Template.register_tag "asset", Jekyll::Assets::Tag
