import HautevilleHouse.AnthropologyArchaeologyCanonicalLaneLean.ArchaeologicalAdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

def bridgeClosed (A : ArchaeologicalAdmittedObject) : Prop :=
  ArchaeologicalWitnessClosed A

theorem bridge_from_admissible_class (A : ArchaeologicalAdmittedObject) :
    bridgeClosed A := by
  exact A.conclusion

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse