(define (problem problem-hc)
	
  (:domain mitigacion-hc)

  (:objects
    cafe arroz - cultivo
  )

  (:init
    (= (nivel-emision cafe) 100)
    (= (nivel-emision arroz) 90)
    (= (presupuesto cafe) 1000)
    (= (presupuesto arroz) 1000)
    (= (presupuesto-total-usado) 0)
  ) 
  
  (:goal (and
        (= (nivel-emision cafe) 80)
        (= (nivel-emision arroz) 50)
        )

  )
  (:metric minimize (presupuesto-total-usado))
)