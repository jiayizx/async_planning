(define (domain balloon_decorations)
  (:requirements :durative-actions)
  (:predicates
    (select_hat_pending)
    (select_hat_done)
    (purchase_glue_pending)
    (purchase_glue_done)
    (blow_balloons_pending)
    (blow_balloons_done)
    (add_hat_pending)
    (add_hat_done)
  )

  (:durative-action do_select_hat
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (select_hat_pending))
    :effect (and (at start (not (select_hat_pending))) (at end (select_hat_done)))
  )

  (:durative-action do_purchase_glue
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (purchase_glue_pending))
    :effect (and (at start (not (purchase_glue_pending))) (at end (purchase_glue_done)))
  )

  (:durative-action do_blow_balloons
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (blow_balloons_pending))
    :effect (and (at start (not (blow_balloons_pending))) (at end (blow_balloons_done)))
  )

  (:durative-action do_add_hat
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (add_hat_pending)) (at start (select_hat_done)) (at start (purchase_glue_done)) (at start (blow_balloons_done)))
    :effect (and (at start (not (add_hat_pending))) (at end (add_hat_done)))
  )
)
