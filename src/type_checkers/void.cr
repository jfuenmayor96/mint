module Mint
  class TypeChecker
    def check(node : Ast::Void) : Type
      VOID
    end
  end
end
