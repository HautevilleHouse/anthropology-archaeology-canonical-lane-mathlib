import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.siteInterpreted ∧ A.object.dataRecorded ∧ A.object.artifactCataloged

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse