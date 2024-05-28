(define (problem problem-hc)
	
  (:domain mitigacion-hc)

  (:objects
    palma yuca - cultivo
  )

  (:init
    (= (nivel-emision palma) 70)
    (= (nivel-emision yuca) 65)
    (= (presupuesto palma) 6000)
    (= (presupuesto yuca) 6000)
    (= (presupuesto-total-usado) 0)
  ) 
  
  (:goal (and
        (= (nivel-emision palma) 20)
        (= (nivel-emision yuca) 15)
        )

  )
  (:metric minimize (presupuesto-total-usado))
)