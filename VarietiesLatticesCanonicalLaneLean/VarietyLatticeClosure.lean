import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VarietiesLatticesCanonicalLaneLean.VarietyLatticeStructures
import HautevilleHouse.VarietiesLatticesCanonicalLaneLean.BirkhoffTheorem

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VarietyLatticeClosed (A.object : VarietyLatticePackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedVarietyLatticeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_variety_lattice_endgame (A : AdmissibleClass) :
    ConstrainedVarietyLatticeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse
