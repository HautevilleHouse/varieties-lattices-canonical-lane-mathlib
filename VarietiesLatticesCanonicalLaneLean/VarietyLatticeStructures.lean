import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

structure VarietyLatticePackage where
  signature : Type u
  equations : List (Term signature)
  latticeOfVarieties : Type v
  latticeOperations : Prop
  latticeProperties : Prop

structure VarietyLatticeEvidence (V : VarietyLatticePackage) where
  signatureClosed : V.signature
  equationsClosed : V.equations = []
  latticeOperationsClosed : V.latticeOperations
  latticePropertiesClosed : V.latticeProperties

def VarietyLatticeClosed (V : VarietyLatticePackage) : Prop :=
  V.latticeOperations ∧ V.latticeProperties

theorem variety_lattice_closed_from_evidence (V : VarietyLatticePackage) (E : VarietyLatticeEvidence V) :
    VarietyLatticeClosed V := by
  exact And.intro E.latticeOperationsClosed E.latticePropertiesClosed

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse
