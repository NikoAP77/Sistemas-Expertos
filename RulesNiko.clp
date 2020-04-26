(deffacts MAIN::iniciales
   (K)
   (H))

(defrule MAIN::rule1
   (A)
   =>
   (printout t "Existe E" crlf)
   (assert (E)))

(defrule MAIN::rule2
   (B)
   =>
   (printout t "Existe D" crlf)
   (assert (D)))

(defrule MAIN::rule3
   (H)
   =>
   (printout t "Existe A" crlf)
   (assert (A)))

(defrule MAIN::rule4
   (E)
   (G)
   =>
   (printout t "Existe C" crlf)
   (assert (C)))

(defrule MAIN::rule5
   (E)
   (K)
   =>
   (printout t "Existe B" crlf)
   (assert (B)))

(defrule MAIN::rule6
   (D)
   (E)
   (K)
   =>
   (printout t "Existe C" crlf)
   (assert (C)))

(defrule MAIN::rule7
   (G)
   (K)
   (F)
   =>
   (printout t "Existe A" crlf)
   (assert (A)))

