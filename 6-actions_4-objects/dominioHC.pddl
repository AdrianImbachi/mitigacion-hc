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
