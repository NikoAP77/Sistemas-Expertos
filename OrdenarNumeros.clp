(defrule ordenarN
(list $?x)
=>
(assert (listOrder ?x))
)

(defrule orden
?h <- (listOrder $?b ?m1 ?m2&:(< ?m2 ?m1) $?e)
=>
(retract ?h)
(assert (listOrder $?b ?m2 ?m1 $?e))
)

(defrule final
(not (listOrder $?b ?m1 ?m2&:(< ?m2 ?m1) $?e))
(list $?x)
(listOrder $?y)
=>
(printout t "El ordern de: " ?x " es " ?y crlf)
)

