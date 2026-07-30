import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

structure CongruenceDistributiveVariety (V : Variety) where
  isVariety : VarietyClosed V
  congruenceDistributive : Prop
  majorityTerm : Option (V.carrier → V.carrier → V.carrier → V.carrier)

structure CongruenceDistributiveEvidence (V : Variety) (CD : CongruenceDistributiveVariety V) where
  isVarietyClosed : CD.isVariety
  congruenceDistributiveClosed : CD.congruenceDistributive

def CongruenceDistributiveClosed (V : Variety) (CD : CongruenceDistributiveVariety V) : Prop :=
  CD.isVariety ∧ CD.congruenceDistributive

theorem congruence_distributive_closed_from_evidence (V : Variety) (CD : CongruenceDistributiveVariety V) (E : CongruenceDistributiveEvidence V CD) : CongruenceDistributiveClosed V CD :=
  And.intro E.isVarietyClosed E.congruenceDistributiveClosed

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse