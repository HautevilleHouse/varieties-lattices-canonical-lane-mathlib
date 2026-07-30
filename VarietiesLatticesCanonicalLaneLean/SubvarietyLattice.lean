import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

structure SubvarietyLatticePackage (V : AdmittedVarietyObject) where
  latticeOrder : V.raw.carrier -> V.raw.carrier -> Prop
  meetsDefined : (x y : V.raw.carrier) -> latticeOrder x y
  joinsDefined : (x y : V.raw.carrier) -> latticeOrder (meet x y) (join x y)
  topElement : V.raw.carrier
  bottomElement : V.raw.carrier
  latticeComplete : Prop
  latticeDistributive : Prop
  latticeModular : Prop

structure SubvarietyLatticeEvidence (V : AdmittedVarietyObject) (P : SubvarietyLatticePackage V) where
  latticeCompleteClosed : P.latticeComplete
  latticeDistributiveClosed : P.latticeDistributive
  latticeModularClosed : P.latticeModular

def SubvarietyLatticeClosed (V : AdmittedVarietyObject) (P : SubvarietyLatticePackage V) : Prop :=
  P.latticeComplete ∧ P.latticeDistributive ∧ P.latticeModular

theorem subvariety_lattice_closed_from_evidence (V : AdmittedVarietyObject) (P : SubvarietyLatticePackage V) (E : SubvarietyLatticeEvidence V P) :
    SubvarietyLatticeClosed V P := by
  exact And.intro E.latticeCompleteClosed (And.intro E.latticeDistributiveClosed E.latticeModularClosed)

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse