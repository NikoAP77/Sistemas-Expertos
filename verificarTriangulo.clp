(defrule MAIN::inicial
(initial-fact)
=>
(printout t "***** DETECTAR ANGULOS *****" crlf)
(printout t "Ingrese una opcion..." crlf)
(printout t "1. Detectar por lados" crlf)
(printout t "2. Detectar por angulos" crlf)
(printout t "------------------------" crlf)
(assert (opc(read)))
)

(defrule MAIN::lados
   (opc 1)
   =>
   (printout t "Ingrese una opcion..." crlf)
   (printout t "1. Tres lados iguales" crlf)
   (printout t "2. Dos lados iguales" crlf)
   (printout t "3. Ningun lado igual" crlf)
   (printout t "------------------------" crlf)
   (assert (numLados(read))))

(defrule MAIN::angulos
   (opc 2)
   =>
   (printout t "Ingrese una opcion..." crlf)
   (printout t "1. Angulo de 90ø grados" crlf)
   (printout t "2. Angulo menor a 90ø grados" crlf)
   (printout t "3. Angulo mayor a 90ø grados" crlf)
   (printout t "------------------------" crlf)
   (assert (graAngulo (read))))

(defrule MAIN::equi
   (numLados 1)
   =>
   (printout t "***** TRIANGULO EQUILATERO *****" crlf))

(defrule MAIN::isos
   (numLados 2)
   =>
   (printout t "***** TRIANGULO ISOSELES *****" crlf))

(defrule MAIN::esca
   (numLados 3)
   =>
   (printout t "***** TRIANGULO ESCALENO *****" crlf))

(defrule MAIN::rect
   (graAngulo 1)
   =>
   (printout t "***** TRIANGULO RECTANGULO *****" crlf))

(defrule MAIN::acut
   (graAngulo 2)
   =>
   (printout t "***** TRIANGULO ACUTANGULO *****" crlf))

(defrule MAIN::obtu
   (graAngulo 3)
   =>
   (printout t "***** TRIANGULO OBTUSANGULO *****" crlf))

