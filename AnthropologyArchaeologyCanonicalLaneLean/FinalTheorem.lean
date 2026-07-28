import HautevilleHouse.AnthropologyArchaeologyCanonicalLaneLean.RadiocarbonDating
import HautevilleHouse.AnthropologyArchaeologyCanonicalLaneLean.StratigraphicSequencing

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

def ConstrainedAnthropologyArchaeologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_anthropology_archaeology_endgame (A : AdmissibleClass) :
    ConstrainedAnthropologyArchaeologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse