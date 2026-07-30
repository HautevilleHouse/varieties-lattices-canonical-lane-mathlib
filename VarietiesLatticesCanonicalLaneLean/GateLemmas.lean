import VarietiesLatticesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

def gateClosed (A : LatticeAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : LatticeAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse