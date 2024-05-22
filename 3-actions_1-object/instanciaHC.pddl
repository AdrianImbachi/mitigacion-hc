(define (problem problem-hc)
	
  (:domain mitigacion-hc)

  (:objects
    cafe - cultivo
  )

  (:init
    (= (nivel-emision cafe) 100)
    (= (presupuesto cafe) 1000)
    (= (presupuesto-total-usado) 0)
  ) 
  
  (:goal (and
        (= (nivel-emision cafe) 80))

  )
  (:metric minimize (presupuesto-total-usado))
)