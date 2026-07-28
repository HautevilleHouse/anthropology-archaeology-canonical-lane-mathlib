import HautevilleHouse.AnthropologyArchaeologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObjectClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse