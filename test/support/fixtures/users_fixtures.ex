defmodule RealDealApi.UsersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `RealDealApi.Users` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        full_name: "some full_name",
        gender: "some gender",
        biography: "some biography"
      })
      |> RealDealApi.Users.create_user()

    user
  end
end
