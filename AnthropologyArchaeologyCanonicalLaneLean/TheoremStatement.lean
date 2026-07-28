import HautevilleHouse.AnthropologyArchaeologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure ArchaeologicalTheoremStatement where
  sourceKey : String
  theoremName : String
  siteType : String
  datingMethod : String
  materialCultureAnalysis : Prop
  stratigraphicSequenceClosed : Prop
  carriedRemainder : String

structure SourceRepository where
  name : String
  description : String

def sourceRepository : SourceRepository :=
  { name := "anthropology-archaeology-canonical-lane",
    description := "Canonical formalization of key archaeological theorems" }

def sourceDescription : String :=
  "Admissible closure for stratigraphic sequencing and artifact typology"

structure SourceTheoremBoundary where
  claimBoundary : String

def sourceTheoremBoundary : SourceTheoremBoundary :=
  { claimBoundary := "Classical boundary: unresolved stratigraphic correlation" }

def archaeologicalTheoremStatement : ArchaeologicalTheoremStatement :=
  { sourceKey := sourceRepository.name,
    theoremName := sourceRepository.name,
    siteType := "Stratified archaeological site",
    datingMethod := "Radiocarbon and typological cross-dating",
    materialCultureAnalysis := True,
    stratigraphicSequenceClosed := True,
    carriedRemainder := "Open classical boundary for absolute chronology refinement" }

theorem archaeological_statement_source_key_checked :
    archaeologicalTheoremStatement.sourceKey = sourceRepository.name := by
  rfl

theorem archaeological_statement_theorem_name_checked :
    archaeologicalTheoremStatement.theoremName = sourceRepository.name := by
  rfl

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse