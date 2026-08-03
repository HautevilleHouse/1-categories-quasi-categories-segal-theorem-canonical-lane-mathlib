import SegalTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace SegalTheoremCanonicalLaneLean

def ConstrainedSegalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_segal_endgame (A : AdmissibleClass) :
    ConstrainedSegalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end SegalTheoremCanonicalLaneLean
end HautevilleHouse