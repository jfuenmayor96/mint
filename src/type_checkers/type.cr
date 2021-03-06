module Mint
  class TypeChecker
    def check(node : Ast::Type) : Type
      resolve_record_definition(node.name) || begin
        parameters =
          check node.parameters

        Type.new(node.name, parameters)
      end
    end
  end
end
