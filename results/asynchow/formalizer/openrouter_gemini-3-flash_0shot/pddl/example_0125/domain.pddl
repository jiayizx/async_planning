(define (domain wedding_ceremony)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (band_paid)
    (guests_invited)
    (catering_paid)
    (dressed_up)
    (at_church)
    (vows_exchanged)
    (ceremony_complete)
  )

  (:durative-action pay_band
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (band_paid)))
  )

  (:durative-action invite_guests
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (guests_invited)))
  )

  (:durative-action pay_catering
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (catering_paid)))
  )

  (:durative-action get_dressed
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (band_paid)) (at start (guests_invited)) (at start (catering_paid)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dressed_up)))
  )

  (:durative-action go_to_church
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (dressed_up)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_church)))
  )

  (:durative-action exchange_vows
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (at_church)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vows_exchanged)))
  )

  (:durative-action kiss_and_dance
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (vows_exchanged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ceremony_complete)))
  )
)