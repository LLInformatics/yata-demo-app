defmodule YataDemoApp.Utils.Locale do
  @moduledoc """
  Helpers for dealing with localization.
  """

  @doc """
  Returns current locale for process.
  """
  @spec current_locale() :: String.t()
  def current_locale do
    Process.get(__MODULE__) || Yatapp.locale()
  end

  @doc """
  Puts locale in process.
  """
  @spec put_locale(String.t()) :: String.t()
  def put_locale(locale) do
    Process.put(__MODULE__, locale)
  end

  @doc """
  Fetches translation for given key.
  """
  @spec t(String.t(), list | map) :: String.t()
  def t(key, values \\ %{}) do
    Yatapp.translate(current_locale(), key, values)
  end
end
