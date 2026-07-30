import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

structure JonssonLemma where
  variety : Variety
  congruenceDistributive : Bool
  subdirectlyIrreducibles : Set (SubdirectlyIrreducible variety.carrier)
  congruenceDistributiveCondition : Prop

structure JonssonLemmaEvidence (J : JonssonLemma) where
  varietyClosed : VarietyClosed J.variety
  congruenceDistributiveConditionClosed : J.congruenceDistributiveCondition

def JonssonLemmaClosed (J : JonssonLemma) : Prop :=
  VarietyClosed J.variety ∧ J.congruenceDistributiveCondition

theorem jonsson_lemma_closed_from_evidence (J : JonssonLemma) (E : JonssonLemmaEvidence J) : JonssonLemmaClosed J :=
  And.intro E.varietyClosed E.congruenceDistributiveConditionClosed

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse