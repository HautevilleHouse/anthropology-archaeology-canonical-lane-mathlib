import AnthropologyArchaeologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure RadiocarbonDatePackage where
  sample : Type
  measuredAge : Prop
  calibrationCurve : Prop
  calibratedAge : Prop
  uncertainty : Prop

structure RadiocarbonDateEvidence (R : RadiocarbonDatePackage) where
  measuredAgeClosed : R.measuredAge
  calibrationCurveClosed : R.calibrationCurve
  calibratedAgeClosed : R.calibratedAge
  uncertaintyClosed : R.uncertainty

def RadiocarbonDateClosed (R : RadiocarbonDatePackage) : Prop :=
  R.measuredAge ∧ R.calibrationCurve ∧ R.calibratedAge ∧ R.uncertainty

theorem radiocarbon_date_closed_from_evidence (R : RadiocarbonDatePackage) (E : RadiocarbonDateEvidence R) :
    RadiocarbonDateClosed R := by
  exact And.intro E.measuredAgeClosed (And.intro E.calibrationCurveClosed (And.intro E.calibratedAgeClosed E.uncertaintyClosed))

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse