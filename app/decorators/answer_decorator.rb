class AnswerDecorator < BaseDecorator
  def self.decorate(object)
    if object.respond_to? :map
      object.map { |o| new(o) }
    else
      new(object)
    end
  end
end
