(define (problem create-poetry-book-problem)
  (:domain create-poetry-book)
  (:objects)
  (:init
    (pending1)
    (pending2)
    (pending3)
    (pending4)
  )
  (:goal (and
    (done1) (done2) (done3) (done4) (materials_sent)
  ))
)