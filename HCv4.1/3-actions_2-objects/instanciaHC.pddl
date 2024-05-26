(define (problem problem-hc)
	
  (:domain mitigacion-hc)

  (:objects
    palma aguacate - cultivo
  )

  (:init
    (= (nivel-emision palma) 70)
    (= (nivel-emision aguacate) 65)
    (= (presupuesto palma) 6000)
    (= (presupuesto aguacate) 6000)
    (= (presupuesto-total-usado) 0)
  ) 
  
  (:goal (and
        (= (nivel-emision palma) 20)
        (= (nivel-emision aguacate) 10)
        )

  )
  (:metric minimize (presupuesto-total-usado))
)