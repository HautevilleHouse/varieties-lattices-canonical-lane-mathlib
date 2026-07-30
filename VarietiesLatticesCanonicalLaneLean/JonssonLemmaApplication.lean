import canonicalLaneMathlib.AdmissibleClass

/-!
# Jonsson Lemma Application Package
-/

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

structure JonssonLemmaApplicationPackage
    {P : CongruenceDistributiveVarietiesPackage}
    (S : SubdirectlyIrreduciblePackage P) where
  jonssonLemmaApplied : Prop
  subdirectRepresentation : Prop
  congruenceExtensionProperty : Prop
  varietyGeneratedBySubdirectlyIrreducibles : Prop

structure JonssonLemmaApplicationEvidence
    {P : CongruenceDistributiveVarietiesPackage}
    {S : SubdirectlyIrreduciblePackage P}
    (J : JonssonLemmaApplicationPackage S) where
  jonssonLemmaAppliedClosed : J.jonssonLemmaApplied
  subdirectRepresentationClosed : J.subdirectRepresentation
  congruenceExtensionPropertyClosed : J.congruenceExtensionProperty
  varietyGeneratedBySubdirectlyIrreduciblesClosed : J.varietyGeneratedBySubdirectlyIrreducibles

def JonssonLemmaApplicationClosed
    {P : CongruenceDistributiveVarietiesPackage}
    {S : SubdirectlyIrreduciblePackage P}
    (J : JonssonLemmaApplicationPackage S) : Prop :=
  J.jonssonLemmaApplied ∧ J.subdirectRepresentation ∧
  J.congruenceExtensionProperty ∧ J.varietyGeneratedBySubdirectlyIrreducibles

theorem jonsson_lemma_application_closed_from_evidence
    {P : CongruenceDistributiveVarietiesPackage}
    {S : SubdirectlyIrreduciblePackage P}
    (J : JonssonLemmaApplicationPackage S)
    (E : JonssonLemmaApplicationEvidence J) :
    JonssonLemmaApplicationClosed J := by
  exact And.intro E.jonssonLemmaAppliedClosed
    (And.intro E.subdirectRepresentationClosed
      (And.intro E.congruenceExtensionPropertyClosed
        E.varietyGeneratedBySubdirectlyIrreduciblesClosed))

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse