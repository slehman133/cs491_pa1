defmodule PetStoreManager.Customers.Pet do
  use Ecto.Schema
  import Ecto.Changeset

  schema "pets" do
    field(:age, :float)
    field(:breed, :string)
    field(:name, :string)
    field(:owner_last_name, :string)
    field(:species, :string)

    timestamps()
  end

  @doc false
  def changeset(pet, attrs) do
    pet
    |> cast(attrs, [:name, :species, :breed, :owner_last_name, :age])
    |> validate_required([:name, :species, :owner_last_name, :age])
    |> validate_length(:name, min: 3, max: 20)
  end
end
