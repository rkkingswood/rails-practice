require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create!(title: "Why is Question?", body: "More question details")}
  let(:answer) { Answer.create!(body: "answer body", question: question)}

  it "should respond to body" do
    expect(answer).to respond_to(:body)
  end

end
