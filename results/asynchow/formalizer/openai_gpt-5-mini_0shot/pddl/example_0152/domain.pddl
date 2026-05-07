(define (domain teach-cat-talk)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (recognize_done)
    (understand_done)
    (payatt_done)
  )

  (:durative-action do_recognize
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (recognize_done))
    )
  )

  (:durative-action do_understand
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step2)) (at start (recognize_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (understand_done))
    )
  )

  (:durative-action do_pay_attention
    :parameters ()
    :duration (= ?duration 1814400)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (payatt_done))
    )
  )
)
