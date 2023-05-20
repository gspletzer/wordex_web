defmodule Wordex.Guess do
  defstruct [:zero, :one, :two, :three, :four]
  @types %{zero: :string, one: :string, two: :string, three: :string, four: :string}

  def new(word) do
    list = String.split(word, "", trim: true)
    %__MODULE__{zero: Enum.at(list, 0), one: Enum.at(list, 1), two: Enum.at(list, 2), three: Enum.at(list, 3), four: Enum.at(list, 4)}
  end

  def changeset(params \\ %{"zero" => "", "one" => "", "two" => "", "three" => "", "four" => ""}) do
    guess = %__MODULE__{}
    Ecto.Changeset.cast({guess, @types}, params, Map.keys(@types))
  end

  def update(guess, params) do
    Ecto.Changeset.cast({guess, @types}, params, Map.keys(@types))
  end
end
