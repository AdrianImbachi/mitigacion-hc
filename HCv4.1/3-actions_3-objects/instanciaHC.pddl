(define (problem problem-hc)
	
  (:domain mitigacion-hc)

  (:objects
    palma aguacate cacao - cultivo
  )

  (:init
    (= (nivel-emision palma) 70)
    (= (nivel-emision aguacate) 65)
    (= (nivel-emision cacao) 50)
    (= (presupuesto palma) 6000)
    (= (presupuesto aguacate) 6000)
    (= (presupuesto cacao) 6000)
    (= (presupuesto-total-usado) 0)
  ) 
  
  (:goal (and
        (= (nivel-emision palma) 20)
        (= (nivel-emision aguacate) 10)
        (= (nivel-emision cacao) 0)
        )

  )
  (:metric minimize (presupuesto-total-usado))
)