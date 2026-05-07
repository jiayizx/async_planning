(define (domain teach_cat_talk)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (recognize_meow_done)
    (understand_meow_done)
    (pay_attention_done)
  )
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 1)
    :condition (at start (step_pending step1))
    :effect (and 
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (recognize_meow_done))
    )
  )
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 2)
    :condition (and 
      (at start (step_pending step2))
      (at start (recognize_meow_done))
    )
    :effect (and 
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (understand_meow_done))
    )
  )
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 3)
    :condition (at start (step_pending step3))
    :effect (and 
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (pay_attention_done))
    )
  )
)