class BaseDecorator
  def self.decorate(object)
    new(object)
  end

  def initialize(object)
    @object = object
  end

  def body
    render_markdown(object.body)
  end

  private

  attr_reader :object

  def render_markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    markdown.render(text).html_safe
  end
end
