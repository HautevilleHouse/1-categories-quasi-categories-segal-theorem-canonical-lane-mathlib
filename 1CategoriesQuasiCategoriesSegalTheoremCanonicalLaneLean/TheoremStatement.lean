import SegalTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace SegalTheoremCanonicalLaneLean

structure SegalTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  quasiCategoryConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr

def sourceTheoremStatement : SegalTheoremStatement := {
  sourceKey := "1CategoriesQuasiCategoriesSegalTheoremCanonicalLaneLean",
  theoremName := "1CategoriesQuasiCategoriesSegalTheorem",
  theoremObject := "The theorem that the nerve of a 1-category is a quasi-category and satisfies the Segal condition.",
  classicalBoundary := "The unrestricted classical boundary remains open; the constrained quasi-category closure is internalized through the Segal endgame.",
  quasiCategoryConstrainedStatement := "quasi-category-constrained theorem certificate internalized through bridge and gate closure.",
  certificateLane := "quasi_category_constrained",
  carriedRemainder := "classical source boundary carried by the endgame pilot."
}

end SegalTheoremCanonicalLaneLean
end HautevilleHouse