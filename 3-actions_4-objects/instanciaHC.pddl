(define (problem problem-hc)
	
  (:domain mitigacion-hc)

  (:objects
    cafe arroz maiz yuca - cultivo
  )

  (:init
    (= (nivel-emision cafe) 100)
    (= (nivel-emision arroz) 90)
    (= (nivel-emision maiz) 100)
    (= (nivel-emision yuca) 70)
    (= (presupuesto cafe) 2000)
    (= (presupuesto arroz) 2000)
    (= (presupuesto maiz) 2000)
    (= (presupuesto yuca) 2000)
    (= (presupuesto-total-usado) 0)
  ) 
  
  (:goal (and
        (= (nivel-emision cafe) 80)
        (= (nivel-emision arroz) 50)
        (= (nivel-emision maiz) 20)
        (= (nivel-emision yuca) 0)
        )

  )
  (:metric minimize (presupuesto-total-usado))
)