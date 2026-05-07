(define (domain laundry-domain)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (buy_softener_done)
    (buy_detergent_done)
    (gather_done)
    (open_done)
    (put_done)
    (add_det_done)
    (laundry_ready)
  )

  (:durative-action do_step1_buy_softener
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (buy_softener_done))
    )
  )

  (:durative-action do_step2_buy_detergent
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (buy_detergent_done))
    )
  )

  (:durative-action do_step3_gather_clothes
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (and (step_pending ?s) (buy_softener_done) (buy_detergent_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (gather_done))
    )
  )

  (:durative-action do_step4_open_washer
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (at start (and (step_pending ?s) (gather_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (open_done))
    )
  )

  (:durative-action do_step5_put_clothes_in_washer
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (and (step_pending ?s) (open_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (put_done))
    )
  )

  (:durative-action do_step6_add_detergent
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (and (step_pending ?s) (open_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (add_det_done))
    )
  )

  (:durative-action do_step7_turn_on_washer
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (at start (and (step_pending ?s) (put_done) (add_det_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (laundry_ready))
    )
  )
)
