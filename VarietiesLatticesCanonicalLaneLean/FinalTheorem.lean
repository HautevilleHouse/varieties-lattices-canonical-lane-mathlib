import VarietiesLatticesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

def ConstrainedVarietyClosure (A : LatticeAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_variety_endgame (A : LatticeAdmissibleClass) :
    ConstrainedVarietyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse