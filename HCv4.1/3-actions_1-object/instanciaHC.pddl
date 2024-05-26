(define (problem problem-hc)
	
  (:domain mitigacion-hc)

  (:objects
    palma - cultivo
  )

  (:init
    (= (nivel-emision palma) 70)
    (= (presupuesto palma) 6000)
    (= (presupuesto-total-usado) 0)
  ) 
  
  (:goal (and
        (= (nivel-emision palma) 20)
        )

  )
  (:metric minimize (presupuesto-total-usado))
)