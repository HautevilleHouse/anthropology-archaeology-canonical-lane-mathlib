import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure SiteFormationProcessesPackage where
  depositionalProcess : Type u
  postDepositionalAlteration : Type v
  processSequence : depositionalProcess → postDepositionalAlteration → Prop
  formationIntegrity : Prop

structure SiteFormationProcessesEvidence (S : SiteFormationProcessesPackage) where
  processSequenceClosed : ∀ d : S.depositionalProcess, ∀ p : S.postDepositionalAlteration, S.processSequence d p → True
  formationIntegrityClosed : S.formationIntegrity

def SiteFormationProcessesClosed (S : SiteFormationProcessesPackage) : Prop :=
  S.formationIntegrity

theorem site_formation_processes_closed_from_evidence
    (S : SiteFormationProcessesPackage) (E : SiteFormationProcessesEvidence S) :
    SiteFormationProcessesClosed S := by
  exact E.formationIntegrityClosed

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse
