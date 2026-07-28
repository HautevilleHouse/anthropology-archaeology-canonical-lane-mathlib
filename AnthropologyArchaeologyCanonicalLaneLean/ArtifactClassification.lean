import HautevilleHouse.AnthropologyArchaeologyCanonicalLaneLean.AdmissibleClass

/-!
# Artifact Classification Package
-/

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure ArtifactClassificationPackage where
  typology : Type u
  seriationOrder : PartialOrder typology
  culturalPhaseConsistency : Prop
  chronologyIntegration : Prop

default instance : Inhabited (ArtifactClassificationPackage) where
  default := { typology := PUnit, seriationOrder := by infer_instance, culturalPhaseConsistency := True, chronologyIntegration := True }

structure ArtifactClassificationEvidence (C : ArtifactClassificationPackage) where
  culturalPhaseConsistencyClosed : C.culturalPhaseConsistency
  chronologyIntegrationClosed : C.chronologyIntegration

def ArtifactClassificationClosed (C : ArtifactClassificationPackage) : Prop :=
  C.culturalPhaseConsistency ∧ C.chronologyIntegration

theorem artifact_classification_closed_from_evidence (C : ArtifactClassificationPackage) (E : ArtifactClassificationEvidence C) :
    ArtifactClassificationClosed C := by
  exact And.intro E.culturalPhaseConsistencyClosed E.chronologyIntegrationClosed

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse