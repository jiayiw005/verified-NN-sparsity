import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Finset.Basic

namespace VerifiedNNSparsity

/--
A DAG should have a finite type of nodes,
                  a directed edge relation,
                  a designated set of inpyts,
                  a single output node
                  an arity (fan-in) for each node
-/
structure dag where
  Node : Type
  [finiteNode : Fintype Node]
  edge : Node → Node → Prop
  inputs : Finset Node
  output : Node
  arity : Node → Nat

attribute [instance] dag.finiteNode

namespace DAG

variable {G : dag}

def children (G : dag) (v : G.Node) : Finset G.Node :=
  sorry

end DAG

end VerifiedNNSparsity
