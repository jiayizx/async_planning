(define (domain beef-stroganoff)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (stroganoff_ready)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s1_done))
            )
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (and (step_pending ?s)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s2_done))
            )
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (at start (and (step_pending ?s) (s1_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s3_done))
            )
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (and (step_pending ?s) (s3_done) (s5_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s4_done))
              (at end (stroganoff_ready))
            )
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (at start (and (step_pending ?s) (s2_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s5_done))
            )
  )
)
