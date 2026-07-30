import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

structure VarietyObject where
  carrier : Type
  operatorSet : List (Nat -> carrier -> carrier)
  equationalTheory : List (carrier -> Prop)
  identitiesClosed : Prop
  signatureOut : Prop
  conclusion : identitiesClosed

structure AdmittedVarietyObject where
  raw : VarietyObject
  latticeClass : Prop
  admissibleSignature : Prop
  identitiesClosure : raw.identitiesClosed
  conclusion : latticeClass ∧ admissibleSignature

def VarietyWitnessClosed (O : AdmittedVarietyObject) : Prop :=
  O.identitiesClosure

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse