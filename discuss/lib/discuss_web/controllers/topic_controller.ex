defmodule DiscussWeb.TopicController do
  use DiscussWeb, :controller

  def index(conn, _params) do
    topics = Repo.all(DiscussWeb.Topic)
    render conn, "index.html", topics: topics
  end

  def new(conn, _params) do
    changeset = DiscussWeb.Topic.changeset(%DiscussWeb.Topic{}, %{})
    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"topic" => topic}) do
    changeset = DiscussWeb.Topic.changeset(%DiscussWeb.Topic{}, topic)

  #   # changeset = conn.assigns.user
  #   #   |> build_assoc(:topics)
  #   #   |> Topic.changeset(topic)

    case Repo.insert(changeset) do
      {:ok, post} -> IO.inspect(post)
  #   #     conn
  #   #     |> put_flash(:info, "Topic Created")
  #   #     |> redirect(to: topic_path(conn, :index))
      {:error, changeset} ->
        render conn, "new.html", changeset: changeset
    end
  end
end
