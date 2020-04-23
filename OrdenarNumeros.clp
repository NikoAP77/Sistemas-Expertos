(deffacts MAIN::numeros
   (list 18)
   (list 9)
   (list 30)
   (list 6)
   (list 1)
)

(defrule MAIN::ordenarN
   (list ?x)
   =>
   (assert (listOrder ?x)))

(defrule MAIN::orden
   ?h <- (max listOrder ?b ?m1 ?m2&:(< ?m2 ?m1) $?e)
   =>
   (retract ?h)
   (assert (listOrder ?b ?m2 ?m1 $?e)))

(defrule MAIN::final
   (not (listOrder ?x ?m1 ?m2&:(< ?m2 ?m1) $?e))
   (list ?y)
   =>
   (printout t " - " ?y ))

