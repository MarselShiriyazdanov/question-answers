class QuestionDecorator < BaseDecorator
  delegate :title, :answers, :id, :to_param, to: :object
end
