import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesQuasiCategoriesSegalTheorem

structure BergnerModelStructurePackage where
  cofibrations : Prop
  trivialCofibrations : Prop
  fibrations : Prop
  weakEquivalences : Prop
  modelStructureAxioms : Prop

structure BergnerModelStructureEvidence (B : BergnerModelStructurePackage) where
  cofibrationsClosed : B.cofibrations
  trivialCofibrationsClosed : B.trivialCofibrations
  fibrationsClosed : B.fibrations
  weakEquivalencesClosed : B.weakEquivalences
  modelStructureAxiomsClosed : B.modelStructureAxioms

def BergnerModelStructureClosed (B : BergnerModelStructurePackage) : Prop :=
  B.cofibrations ∧ B.trivialCofibrations ∧ B.fibrations ∧ B.weakEquivalences ∧ B.modelStructureAxioms

theorem bergner_model_structure_closed_from_evidence
    (B : BergnerModelStructurePackage) (E : BergnerModelStructureEvidence B) : BergnerModelStructureClosed B :=
  And.intro E.cofibrationsClosed
    (And.intro E.trivialCofibrationsClosed
      (And.intro E.fibrationsClosed
        (And.intro E.weakEquivalencesClosed E.modelStructureAxiomsClosed)))

end CategoriesQuasiCategoriesSegalTheorem
end HautevilleHouse