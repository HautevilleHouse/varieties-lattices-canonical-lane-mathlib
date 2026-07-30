import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Set.Lattice

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

structure VarietiesLatticeSpace where
  carrier : Type
  operations : List (List (carrier → carrier) → carrier)
  identities : Set (carrier × carrier)

structure VarietiesLatticeAdmittedObject where
  space : VarietiesLatticeSpace
  latticeStructure : Prop
  varietyClosedUnderHomomorphisms : Prop
  subdirectlyIrreducible : Prop
  conclusion : latticeStructure ∧ varietyClosedUnderHomomorphisms ∧ subdirectlyIrreducible

structure VarietiesLatticeEndgameState where
  object : VarietiesLatticeAdmittedObject

def VarietiesLatticeWitnessClosed (O : VarietiesLatticeAdmittedObject) : Prop :=
  O.latticeStructure ∧ O.varietyClosedUnderHomomorphisms ∧ O.subdirectlyIrreducible

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse