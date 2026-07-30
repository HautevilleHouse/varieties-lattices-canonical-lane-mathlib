import canonicalLaneMathlib.AdmissibleClass

/-!
# Congruence Distributive Varieties Package
-/

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

structure CongruenceDistributiveVarietiesPackage where
  varietyType : Type u
  congruenceLatticeDistributive : Prop
  jonssonLemma : Prop
  termCondition : Prop
  malcevCondition : Prop

structure CongruenceDistributiveEvidence (P : CongruenceDistributiveVarietiesPackage) where
  congruenceLatticeDistributiveClosed : P.congruenceLatticeDistributive
  jonssonLemmaClosed : P.jonssonLemma
  termConditionClosed : P.termCondition
  malcevConditionClosed : P.malcevCondition

def CongruenceDistributiveClosed (P : CongruenceDistributiveVarietiesPackage) : Prop :=
  P.congruenceLatticeDistributive ∧ P.jonssonLemma ∧ P.termCondition ∧ P.malcevCondition

theorem congruence_distributive_closed_from_evidence
    (P : CongruenceDistributiveVarietiesPackage)
    (E : CongruenceDistributiveEvidence P) :
    CongruenceDistributiveClosed P := by
  exact And.intro E.congruenceLatticeDistributiveClosed
    (And.intro E.jonssonLemmaClosed
      (And.intro E.termConditionClosed E.malcevConditionClosed))

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse