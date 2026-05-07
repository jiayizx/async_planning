(define (domain steak_cooking)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (unpacked)
    (dried)
    (seasoned)
    (rested)
    (seared)
  )

  (:durative-action remove_packaging
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (unpacked)))
  )

  (:durative-action pat_dry
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (unpacked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dried)))
  )

  (:durative-action season_steak
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seasoned)))
  )

  (:durative-action rest_steak
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (dried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rested)))
  )

  (:durative-action sear_steak
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (seasoned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seared)))
  )
)