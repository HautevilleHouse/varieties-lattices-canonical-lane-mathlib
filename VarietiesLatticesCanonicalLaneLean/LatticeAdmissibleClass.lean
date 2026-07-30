import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

structure LatticeObject where
  carrier : Type u
  join : carrier → carrier → carrier
  meet : carrier → carrier → carrier
  joinAssoc : ∀ a b c, join (join a b) c = join a (join b c)
  meetAssoc : ∀ a b c, meet (meet a b) c = meet a (meet b c)
  absorb1 : ∀ a b, join a (meet a b) = a
  absorb2 : ∀ a b, meet a (join a b) = a

structure LatticeAdmittedObject where
  object : LatticeObject
  distributive : Prop
  modular : Prop
  conclusion : distributive ∨ modular

structure LatticeAdmissibleClass where
  object : LatticeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def LatticeWitnessClosed (O : LatticeAdmittedObject) : Prop :=
  O.distributive ∨ O.modular

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse