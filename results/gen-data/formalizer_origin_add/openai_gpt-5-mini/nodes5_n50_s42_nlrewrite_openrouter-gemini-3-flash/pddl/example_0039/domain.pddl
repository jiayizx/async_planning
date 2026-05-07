(define (domain body-measurements)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (located_tape)
    (recorded_chart)
    (watched_tutorial)
    (measured_waist_hip)
    (removed_clothing)
  )

  ; Step 1: Locate a flexible measuring tape
  (:durative-action locate_tape
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (located_tape))
    )
  )

  ; Step 2: Record the final dimensions on a chart
  (:durative-action record_chart
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (located_tape)) (at start (watched_tutorial)) (at start (measured_waist_hip)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (recorded_chart))
    )
  )

  ; Step 3: Watch a tutorial on proper measurement techniques
  (:durative-action watch_tutorial
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (watched_tutorial))
    )
  )

  ; Step 4: Measure the waist and hip circumference
  (:durative-action measure_waist_hip
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (located_tape)) (at start (removed_clothing)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (measured_waist_hip))
    )
  )

  ; Step 5: Remove any bulky outer clothing
  (:durative-action remove_clothing
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (removed_clothing))
    )
  )
)
