(define (domain mitigacion-hc)

  (:requirements :typing :strips :fluents :numeric-fluents)

  (:types cultivo)

  (:functions
  	(nivel-emision ?c - cultivo)
    (presupuesto ?c - cultivo)
    (presupuesto-total-usado)
  )

  (:action Usar_inhibidores_de_nitrificacion
    :parameters (?c - cultivo)
    :precondition (and 
              (>= (nivel-emision ?c) 25)
              (>= (presupuesto ?c) 250))
    :effect (and
              (decrease (nivel-emision ?c) 25)
              (decrease (presupuesto ?c) 250))
  )

  (:action Reducir_combustible
    :parameters (?c - cultivo)
    :precondition (and 
              (>= (nivel-emision ?c) 15)
              (>= (presupuesto ?c) 150))
    :effect (and
              (decrease (nivel-emision ?c) 15)
              (decrease (presupuesto ?c) 150))
  )
  
  (:action Sembrar_arboles
    :parameters (?c - cultivo)
    :precondition (and 
              (>= (nivel-emision ?c) 5)
              (>= (presupuesto ?c) 50))
    :effect (and
              (decrease (nivel-emision ?c) 5)
              (decrease (presupuesto ?c) 50))
  )


)
