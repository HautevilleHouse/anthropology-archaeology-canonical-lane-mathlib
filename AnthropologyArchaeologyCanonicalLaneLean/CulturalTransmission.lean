import AnthropologyArchaeologyCanonicalLaneLean.MaterialCulture

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure CulturalTransmissionPackage where
  learningMechanisms : Prop
  socialInteraction : Prop
  innovationDiffusion : Prop
  culturalEvolution : Prop

structure CulturalTransmissionEvidence (C : CulturalTransmissionPackage) where
  learningMechanismsClosed : C.learningMechanisms
  socialInteractionClosed : C.socialInteraction
  innovationDiffusionClosed : C.innovationDiffusion
  culturalEvolutionClosed : C.culturalEvolution

def CulturalTransmissionClosed (C : CulturalTransmissionPackage) : Prop :=
  C.learningMechanisms ∧ C.socialInteraction ∧
  C.innovationDiffusion ∧ C.culturalEvolution

theorem cultural_transmission_closed_from_evidence
    (C : CulturalTransmissionPackage) (E : CulturalTransmissionEvidence C) :
    CulturalTransmissionClosed C := by
  exact And.intro E.learningMechanismsClosed
    (And.intro E.socialInteractionClosed
      (And.intro E.innovationDiffusionClosed E.culturalEvolutionClosed))

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse
