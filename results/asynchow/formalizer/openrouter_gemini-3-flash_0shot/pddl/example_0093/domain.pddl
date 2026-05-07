(define (domain party_preparation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (invited)
    (costume_bought)
    (makeup_bought)
    (dressed)
    (arrived_at_venue)
    (parked)
    (entered)
  )

  (:durative-action get_invited
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (invited)))
  )

  (:durative-action shop_costume
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (invited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (costume_bought)))
  )

  (:durative-action shop_makeup
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (invited)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (makeup_bought)))
  )

  (:durative-action put_on_costume_makeup
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (costume_bought)) (at start (makeup_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dressed)))
  )

  (:durative-action drive_to_venue
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (dressed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (arrived_at_venue)))
  )

  (:durative-action park_car
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (arrived_at_venue)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parked)))
  )

  (:durative-action enter_party
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (parked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (entered)))
  )
)