import VarietiesLatticesCanonicalLaneLean.LatticeAdmissibleClass

namespace HautevilleHouse
namespace VarietiesLatticesCanonicalLaneLean

def bridgeClosed (A : LatticeAdmissibleClass) : Prop :=
  LatticeWitnessClosed A.object

theorem bridge_from_admissible_class (A : LatticeAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VarietiesLatticesCanonicalLaneLean
end HautevilleHouse