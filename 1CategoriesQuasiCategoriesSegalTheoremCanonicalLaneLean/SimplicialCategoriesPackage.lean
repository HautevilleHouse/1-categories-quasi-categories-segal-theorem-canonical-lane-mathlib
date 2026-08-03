import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesQuasiCategoriesSegalTheorem

structure SimplicialCategoriesPackage where
  simplicialCategory : Type u
  mappingSpace : Type v
  hammockLocalization : Prop
  cofibrantReplacement : Prop

structure SimplicialCategoriesEvidence (C : SimplicialCategoriesPackage) where
  hammockLocalizationClosed : C.hammockLocalization
  cofibrantReplacementClosed : C.cofibrantReplacement

def SimplicialCategoriesClosed (C : SimplicialCategoriesPackage) : Prop :=
  C.hammockLocalization ∧ C.cofibrantReplacement

theorem simplicial_categories_closed_from_evidence
    (C : SimplicialCategoriesPackage) (E : SimplicialCategoriesEvidence C) : SimplicialCategoriesClosed C :=
  And.intro E.hammockLocalizationClosed E.cofibrantReplacementClosed

end CategoriesQuasiCategoriesSegalTheorem
end HautevilleHouse