defmodule IgrejotecaWeb.AnswerView do
  use IgrejotecaWeb, :view
  alias IgrejotecaWeb.AnswerView

  def render("index.json", %{answers: answers}) do
    %{data: render_many(answers, AnswerView, "answer.json")}
  end

  def render("show.json", %{answer: answer}) do
    %{data: render_one(answer, AnswerView, "answer.json")}
  end

  def render("answer.json", %{answer: answer}) do
    %{
      id: answer.id,
      text: answer.text,
      correct: answer.correct
    }
  end
end
