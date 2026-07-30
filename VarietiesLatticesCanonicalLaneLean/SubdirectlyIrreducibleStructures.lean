import canonicalLaneMathlib.AdmissibleClass

/-!
# Subdirectly Irreducible Structures Package
-/

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

structure SubdirectlyIrreduciblePackage (P : CongruenceDistributiveVarietiesPackage) where
  algebraType : Type u
  monolithExists : Prop
  congruenceIdentity : Prop
  subdirectDecomposition : Prop
  structureTheorem : Prop

structure SubdirectlyIrreducibleEvidence {P : CongruenceDistributiveVarietiesPackage}
    (S : SubdirectlyIrreduciblePackage P) where
  monolithExistsClosed : S.monolithExists
  congruenceIdentityClosed : S.congruenceIdentity
  subdirectDecompositionClosed : S.subdirectDecomposition
  structureTheoremClosed : S.structureTheorem

def SubdirectlyIrreducibleClosed {P : CongruenceDistributiveVarietiesPackage}
    (S : SubdirectlyIrreduciblePackage P) : Prop :=
  S.monolithExists ∧ S.congruenceIdentity ∧ S.subdirectDecomposition ∧ S.structureTheorem

theorem subdirectly_irreducible_closed_from_evidence
    {P : CongruenceDistributiveVarietiesPackage}
    (S : SubdirectlyIrreduciblePackage P)
    (E : SubdirectlyIrreducibleEvidence S) :
    SubdirectlyIrreducibleClosed S := by
  exact And.intro E.monolithExistsClosed
    (And.intro E.congruenceIdentityClosed
      (And.intro E.subdirectDecompositionClosed E.structureTheoremClosed))

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse