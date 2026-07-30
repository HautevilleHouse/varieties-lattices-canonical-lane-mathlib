import VarietiesLatticesCanonicalLaneLean.VarietyLatticeDefinitions

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

structure CongruenceVarietyPackage where
  variety : VarietyPackage
  congruenceLattice : Type u
  joinCommutative : Prop
  meetCommutative : Prop
  congruenceIdentity : Prop

structure CongruenceVarietyEvidence (C : CongruenceVarietyPackage) where
  joinCommutativeClosed : C.joinCommutative
  meetCommutativeClosed : C.meetCommutative
  congruenceIdentityClosed : C.congruenceIdentity

def CongruenceVarietyClosed (C : CongruenceVarietyPackage) : Prop :=
  C.joinCommutative ∧ C.meetCommutative ∧ C.congruenceIdentity

theorem congruence_variety_closed_from_evidence
    (C : CongruenceVarietyPackage) (E : CongruenceVarietyEvidence C) :
    CongruenceVarietyClosed C := by
  exact And.intro E.joinCommutativeClosed
    (And.intro E.meetCommutativeClosed E.congruenceIdentityClosed)

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse