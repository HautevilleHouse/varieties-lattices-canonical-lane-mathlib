import VarietiesLatticesCanonicalLaneLean.VarietyLatticeDefinitions

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

structure SemidistributiveLatticePackage where
  variety : VarietyPackage
  joinSemidistributive : Prop
  meetSemidistributive : Prop
  characterization : Prop

structure SemidistributiveLatticeEvidence (S : SemidistributiveLatticePackage) where
  joinSemidistributiveClosed : S.joinSemidistributive
  meetSemidistributiveClosed : S.meetSemidistributive
  characterizationClosed : S.characterization

def SemidistributiveLatticeClosed (S : SemidistributiveLatticePackage) : Prop :=
  S.joinSemidistributive ∧ S.meetSemidistributive ∧ S.characterization

theorem semidistributive_lattice_closed_from_evidence
    (S : SemidistributiveLatticePackage) (E : SemidistributiveLatticeEvidence S) :
    SemidistributiveLatticeClosed S := by
  exact And.intro E.joinSemidistributiveClosed
    (And.intro E.meetSemidistributiveClosed E.characterizationClosed)

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse