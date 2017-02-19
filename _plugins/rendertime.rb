module Jekyll
  class RenderTimeTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "#{@text} #{Time.now.utc.strftime('%d %b %Y %H:%M UTC')}".downcase
    end
  end
end

Liquid::Template.register_tag('render_time', Jekyll::RenderTimeTag)
