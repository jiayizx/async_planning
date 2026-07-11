(define (problem make_crown)
  (:domain baby-breath-crown)
  
  (:init
    (choose_breath_pending)
    (trim_stem_pending)
    (tape_bunch_pending)
    (create_circle_pending)
  )

  (:goal (and
    (choose_breath_done)
    (trim_stem_done)
    (tape_bunch_done)
    (create_circle_done)
  ))
)
