import HautevilleHouse.AnthropologyArchaeologyCanonicalLaneLean.ArchaeologicalAdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure RadiocarbonDatingPackage where
  calibrationCurve : Type u
  radiocarbonAge : Type v
  calibratedDate : Type w
  curveValid : Prop
  dateConsistent : Prop

structure RadiocarbonDatingEvidence (R : RadiocarbonDatingPackage) where
  curveValidClosed : R.curveValid
  dateConsistentClosed : R.dateConsistent

def RadiocarbonDatingClosed (R : RadiocarbonDatingPackage) : Prop :=
  R.curveValid ∧ R.dateConsistent

theorem radiocarbon_dating_closed_from_evidence (R : RadiocarbonDatingPackage) (E : RadiocarbonDatingEvidence R) :
    RadiocarbonDatingClosed R := by
  exact And.intro E.curveValidClosed E.dateConsistentClosed

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse