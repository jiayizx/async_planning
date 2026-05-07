(define (problem learn_digital_art_prob)
  (:domain learn_digital_art)
  (:objects
    step1 step2 step3 step4 step5 - step
  )
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )
  (:goal
    (and
      (step_done step1)
      (step_done step2)
      (step_done step3)
      (step_done step4)
      (step_done step5)
      (hardware_chosen)
      (gimp_krita_downloaded)
      (corel_painter_considered)
      (manga_software_chosen)
      (photoshop_paid)
    )
  )
)