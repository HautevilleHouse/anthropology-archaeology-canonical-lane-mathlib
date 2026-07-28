import AnthropologyArchaeologyCanonicalLaneLean.SiteFormationProcesses

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure StratigraphicEvidencePackage where
  stratigraphicSequence : Prop
  chronologicalOrdering : Prop
  culturalLayerCorrelation : Prop
  stratigraphicDiscontinuities : Prop

structure StratigraphicEvidenceEvidence (S : StratigraphicEvidencePackage) where
  stratigraphicSequenceClosed : S.stratigraphicSequence
  chronologicalOrderingClosed : S.chronologicalOrdering
  culturalLayerCorrelationClosed : S.culturalLayerCorrelation
  stratigraphicDiscontinuitiesClosed : S.stratigraphicDiscontinuities

def StratigraphicEvidenceClosed (S : StratigraphicEvidencePackage) : Prop :=
  S.stratigraphicSequence ∧ S.chronologicalOrdering ∧
  S.culturalLayerCorrelation ∧ S.stratigraphicDiscontinuities

theorem stratigraphic_evidence_closed_from_evidence
    (S : StratigraphicEvidencePackage) (E : StratigraphicEvidenceEvidence S) :
    StratigraphicEvidenceClosed S := by
  exact And.intro E.stratigraphicSequenceClosed
    (And.intro E.chronologicalOrderingClosed
      (And.intro E.culturalLayerCorrelationClosed E.stratigraphicDiscontinuitiesClosed))

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse
