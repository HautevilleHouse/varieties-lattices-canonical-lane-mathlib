import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

structure VarietyPackage where
  signature : Type u
  equations : Type v
  equationalTheory : Prop
  idempotentReduced : Prop
  congruenceDistributive : Prop

structure VarietyEvidence (V : VarietyPackage) where
  equationalTheoryClosed : V.equationalTheory
  idempotentReducedClosed : V.idempotentReduced
  congruenceDistributiveClosed : V.congruenceDistributive

def VarietyClosed (V : VarietyPackage) : Prop :=
  V.equationalTheory ∧ V.idempotentReduced ∧ V.congruenceDistributive

theorem variety_closed_from_evidence (V : VarietyPackage) (E : VarietyEvidence V) :
    VarietyClosed V := by
  exact And.intro E.equationalTheoryClosed
    (And.intro E.idempotentReducedClosed E.congruenceDistributiveClosed)

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse