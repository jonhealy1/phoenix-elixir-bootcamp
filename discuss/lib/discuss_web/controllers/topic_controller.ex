defmodule DiscussWeb.TopicController do
  use DiscussWeb, :controller

  def new(conn, _params) do
    changeset = DiscussWeb.Topic.changeset(%DiscussWeb.Topic{}, %{})
    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"topic" => topic}) do
    IO.inspect(conn)
  #   # changeset = conn.assigns.user
  #   #   |> build_assoc(:topics)
  #   #   |> Topic.changeset(topic)

  #   # case Repo.insert(changeset) do
  #   #   {:ok, _topic} ->
  #   #     conn
  #   #     |> put_flash(:info, "Topic Created")
  #   #     |> redirect(to: topic_path(conn, :index))
  #   #   {:error, changeset} ->
  #   #     render conn, "new.html", changeset: changeset
  #   # end
  end
end
