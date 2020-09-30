; SCOPES
(module) @scope
(dataclass) @scope
(datatype) @scope
(classMember (body)  @scope)
(memberPredicate (body)  @scope)
(classlessPredicate (body)  @scope)
(quantified (conjunction) @scope)
(select) @scope

; DEFINITIONS

; module
(module name: (moduleName) @definition.namespace)

; classes
(dataclass name: (className) @definition.class)
(datatype name: (className) @definition.type)

; predicates
(charpred (className) @definition.method)
(memberPredicate name: (predicateName) @definition.method)
(classlessPredicate name: (predicateName) @definition.function)

; variables
(varDecl (varName (simpleId) @definition.var))

; REFERENCES
(simpleId) @reference
