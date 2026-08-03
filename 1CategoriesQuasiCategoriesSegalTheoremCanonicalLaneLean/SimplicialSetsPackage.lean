import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesQuasiCategoriesSegalTheorem

structure SimplicialSetsPackage where
  simplexCategory : Type u
  sSetCategory : Type v
  horn : ℕ → ℕ → Type w
  kanCondition : Prop
  trivialFibration : Prop

structure SimplicialSetsEvidence (S : SimplicialSetsPackage) where
  kanConditionClosed : S.kanCondition
  trivialFibrationClosed : S.trivialFibration

def SimplicialSetsClosed (S : SimplicialSetsPackage) : Prop :=
  S.kanCondition ∧ S.trivialFibration

theorem simplicial_sets_closed_from_evidence
    (S : SimplicialSetsPackage) (E : SimplicialSetsEvidence S) : SimplicialSetsClosed S :=
  And.intro E.kanConditionClosed E.trivialFibrationClosed

end CategoriesQuasiCategoriesSegalTheorem
end HautevilleHouse