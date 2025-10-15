defmodule ProfileApiWeb.ProfileController do
  use ProfileApiWeb, :controller

  def show(conn, _params) do
    {:ok, %{"fact" => fact}} =
      HTTPoison.get!("https://catfact.ninja/fact")
      |> Map.get(:body)
      |> Jason.decode()

    response =
      Jason.OrderedObject.new([
        {"status", "success"},
        {"user",
          Jason.OrderedObject.new([
            {"email", System.get_env("USER_EMAIL")},
            {"name", System.get_env("USER_NAME")},
            {"stack", System.get_env("USER_STACK")}
          ])
        },
        {"timestamp", DateTime.utc_now() |> DateTime.to_iso8601()},
        {"fact", fact}
      ])

    json(conn, response)
  end
end
