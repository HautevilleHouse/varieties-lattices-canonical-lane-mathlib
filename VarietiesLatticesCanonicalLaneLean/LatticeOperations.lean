import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

structure LatticeOperations (A : Type u) where
  join : A → A → A
  meet : A → A → A
  joinAssoc : ∀ x y z : A, join (join x y) z = join x (join y z)
  meetAssoc : ∀ x y z : A, meet (meet x y) z = meet x (meet y z)
  joinComm : ∀ x y : A, join x y = join y x
  meetComm : ∀ x y : A, meet x y = meet y x
  absorption : ∀ x y : A, join x (meet x y) = x
  meetAbsorption : ∀ x y : A, meet x (join x y) = x

structure LatticeOperationsEvidence {A : Type u} (L : LatticeOperations A) where
  joinAssocClosed : L.joinAssoc
  meetAssocClosed : L.meetAssoc
  joinCommClosed : L.joinComm
  meetCommClosed : L.meetComm
  absorptionClosed : L.absorption
  meetAbsorptionClosed : L.meetAbsorption

def LatticeOperationsClosed {A : Type u} (L : LatticeOperations A) : Prop :=
  L.joinAssoc ∧ L.meetAssoc ∧ L.joinComm ∧ L.meetComm ∧ L.absorption ∧ L.meetAbsorption

theorem lattice_operations_closed_from_evidence {A : Type u} (L : LatticeOperations A) (E : LatticeOperationsEvidence L) : LatticeOperationsClosed L :=
  by
    exact And.intro E.joinAssocClosed (And.intro E.meetAssocClosed (And.intro E.joinCommClosed (And.intro E.meetCommClosed (And.intro E.absorptionClosed E.meetAbsorptionClosed))))

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse