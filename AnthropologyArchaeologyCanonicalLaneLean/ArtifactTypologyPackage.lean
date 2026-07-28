import AnthropologyArchaeologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure ArtifactTypologyPackage where
  artifactClass : Type
  formalAttributes : Prop
  typologicalClassification : Prop
  chronologicalMarker : Prop

structure ArtifactTypologyEvidence (T : ArtifactTypologyPackage) where
  formalAttributesClosed : T.formalAttributes
  typologicalClassificationClosed : T.typologicalClassification
  chronologicalMarkerClosed : T.chronologicalMarker

def ArtifactTypologyClosed (T : ArtifactTypologyPackage) : Prop :=
  T.formalAttributes ∧ T.typologicalClassification ∧ T.chronologicalMarker

theorem artifact_typology_closed_from_evidence (T : ArtifactTypologyPackage) (E : ArtifactTypologyEvidence T) :
    ArtifactTypologyClosed T := by
  exact And.intro E.formalAttributesClosed (And.intro E.typologicalClassificationClosed E.chronologicalMarkerClosed)

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse