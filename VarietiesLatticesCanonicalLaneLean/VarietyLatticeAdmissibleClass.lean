import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

structure VarietyLatticeAdmittedObject where
  variety : Type u
  lattice : Type v
  baseSet : variety → lattice
  congruenceClosure : Prop
  homomorphismConditions : Prop
  conclusion : congruenceClosure ∧ homomorphismConditions

structure AdmissibleClass where
  object : VarietyLatticeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.congruenceClosure ∧ A.object.homomorphismConditions) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse