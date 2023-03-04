# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PetStoreManager.Repo.insert!(%PetStoreManager.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

1..49
|> Enum.each(fn _ ->
  PetStoreManager.Repo.insert!(%PetStoreManager.Customers.Pet{
    age: Enum.random(1..20) / 1,
    breed: Faker.Dog.PtBr.breed(),
    name: Faker.Person.name(),
    owner_last_name: Faker.Person.last_name(),
    species: ~s(canine)
  })
end)

50..100
|> Enum.each(fn _ ->
  PetStoreManager.Repo.insert!(%PetStoreManager.Customers.Pet{
    age: Enum.random(1..20) / 1,
    breed: Faker.Cat.breed(),
    name: Faker.Person.name(),
    owner_last_name: Faker.Person.last_name(),
    species: ~s(feline)
  })
end)
