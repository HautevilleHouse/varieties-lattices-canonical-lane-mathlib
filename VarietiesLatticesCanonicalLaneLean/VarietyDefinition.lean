import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

structure Variety where
  carrier : Type u
  operations : List (List (carrier → carrier))
  identities : Prop

structure VarietyEvidence (V : Variety) where
  carrierNonempty : Nonempty V.carrier
  operationsClosed : V.identities

def VarietyClosed (V : Variety) : Prop :=
  Nonempty V.carrier ∧ V.identities

theorem variety_closed_from_evidence (V : Variety) (E : VarietyEvidence V) : VarietyClosed V :=
  And.intro E.carrierNonempty E.operationsClosed

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse