me = Person.create(name: "Shaun Hannah")
meredith = Person.create(name: "Meredith Gould")

orgXO = Organization.create(name: "XO")
org2 = Organization.create(name: "Foo")


orgXO.memberships << me
org2.memberships << me
org2.memberships << meredith
org2.save
orgXO.save



