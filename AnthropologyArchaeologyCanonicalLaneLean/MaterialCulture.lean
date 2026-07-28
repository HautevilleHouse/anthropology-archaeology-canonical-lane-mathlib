import AnthropologyArchaeologyCanonicalLaneLean.RadiocarbonDating

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure MaterialCulturePackage where
  artifactTypology : Prop
  technologicalAnalysis : Prop
  functionalInterpretation : Prop
  stylisticVariation : Prop

structure MaterialCultureEvidence (M : MaterialCulturePackage) where
  artifactTypologyClosed : M.artifactTypology
  technologicalAnalysisClosed : M.technologicalAnalysis
  functionalInterpretationClosed : M.functionalInterpretation
  stylisticVariationClosed : M.stylisticVariation

def MaterialCultureClosed (M : MaterialCulturePackage) : Prop :=
  M.artifactTypology ∧ M.technologicalAnalysis ∧
  M.functionalInterpretation ∧ M.stylisticVariation

theorem material_culture_closed_from_evidence
    (M : MaterialCulturePackage) (E : MaterialCultureEvidence M) :
    MaterialCultureClosed M := by
  exact And.intro E.artifactTypologyClosed
    (And.intro E.technologicalAnalysisClosed
      (And.intro E.functionalInterpretationClosed E.stylisticVariationClosed))

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse
