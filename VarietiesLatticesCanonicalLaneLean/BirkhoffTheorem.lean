import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesLatticesCanonicalLaneLean.VarietyLatticeStructures

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

structure BirkhoffTheoremPackage (V : VarietyLatticePackage) where
  varietyEquational : Prop
  HSPClosure : Prop
  varietyLattice : Prop
  birkhoffTheorem : Prop

structure BirkhoffTheoremEvidence {V : VarietyLatticePackage} (B : BirkhoffTheoremPackage V) where
  varietyEquationalClosed : B.varietyEquational
  HSPClosureClosed : B.HSPClosure
  varietyLatticeClosed : B.varietyLattice
  birkhoffTheoremClosed : B.birkhoffTheorem

def BirkhoffTheoremClosed {V : VarietyLatticePackage} (B : BirkhoffTheoremPackage V) : Prop :=
  B.varietyEquational ∧ B.HSPClosure ∧ B.varietyLattice ∧ B.birkhoffTheorem

theorem birkhoff_theorem_closed_from_evidence {V : VarietyLatticePackage} (B : BirkhoffTheoremPackage V)
    (E : BirkhoffTheoremEvidence B) : BirkhoffTheoremClosed B := by
  exact And.intro E.varietyEquationalClosed
    (And.intro E.HSPClosureClosed
      (And.intro E.varietyLatticeClosed E.birkhoffTheoremClosed))

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse
