(define (domain mitigacion-hc)

  (:requirements :typing :strips :fluents :numeric-fluents)

  (:types cultivo)

  (:functions
  	(nivel-emision ?c - cultivo)
    (presupuesto ?c - cultivo)
    (presupuesto-total-usado)
  )

  (:action Incorporar_abono_organico
    :parameters (?c - cultivo)
    :precondition (and 
              (>= (nivel-emision ?c) 20)
              (>= (presupuesto ?c) 500)
              (<  (presupuesto ?c) 1000)
              )
    :effect (and
              (decrease (nivel-emision ?c) 20)
              (decrease (presupuesto ?c) 500) 
              (increase (presupuesto-total-usado) 500))
  ) 

  (:action Incorporar_labranza_combinada
    :parameters (?c - cultivo)
    :precondition (and 
              (>= (nivel-emision ?c) 10)
              (>= (presupuesto ?c) 100))
    :effect (and
              (decrease (nivel-emision ?c) 10)
              (decrease (presupuesto ?c)  100)   
              (increase (presupuesto-total-usado) 100))
  )

  (:action Intercalar_cultivos
    :parameters (?c - cultivo)
    :precondition (and 
              (>= (nivel-emision ?c) 50)
              (>= (presupuesto ?c) 300))
    :effect (and
              (decrease (nivel-emision ?c) 50)
              (decrease (presupuesto ?c) 300)  
              (increase (presupuesto-total-usado) 300))
  )


)
