import HautevilleHouse.AnthropologyArchaeologyCanonicalLaneLean.ArchaeologicalAdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure SettlementPatternPackage where
  siteDistribution : Type u
  hierarchy : Type v
  catchmentArea : Type w
  spatialOrganization : Prop
  hierarchyValid : Prop

structure SettlementPatternEvidence (S : SettlementPatternPackage) where
  spatialOrganizationClosed : S.spatialOrganization
  hierarchyValidClosed : S.hierarchyValid

def SettlementPatternClosed (S : SettlementPatternPackage) : Prop :=
  S.spatialOrganization ∧ S.hierarchyValid

theorem settlement_pattern_closed_from_evidence (S : SettlementPatternPackage) (E : SettlementPatternEvidence S) :
    SettlementPatternClosed S := by
  exact And.intro E.spatialOrganizationClosed E.hierarchyValidClosed

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse