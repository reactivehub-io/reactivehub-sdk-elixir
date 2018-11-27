defmodule ReactivehubSdkElixir do
  @moduledoc """
  Documentation for ReactivehubSdkElixir.
  """

  @doc """
  Create a config struct with build_config.

  ## Examples

      iex> ReactivehubSdkElixir.build_config('<team-name>', '<client-key>', '<client-secret>')
      %{team_name: '<team_name>', client_key: '<client_key>', client_secret: '<client_secret>'}

  """
  def build_config(team_name, client_key, client_secret) do
    %{team_name: team_name, client_key: client_key, client_secret: client_secret}
  end

  @doc """
  Publish an event to api.

  ## Examples

      iex> ReactivehubSdkElixir.publish_event('<team-name>', '<client-key>', '<client-secret>')
      %{team_name: '<team_name>', client_key: '<client_key>', client_secret: '<client_secret>'}

  """
  def publish_event(config, event_name, payload) do
    url = "#{config.team_name}.reactivehub.io/event/#{event_name}"
    HTTPoison.post(url, payload, [
      {"Content-Type", "application/json"},
      {"client_key", config.client_key},
      {"client_secret", config.client_secret}
    ])
  end
end
