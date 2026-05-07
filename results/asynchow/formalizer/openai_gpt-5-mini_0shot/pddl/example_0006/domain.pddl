(define (domain teach_piano)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (read_complete)
    (buy_complete)
    (practice_complete)
    (expert_complete)
    (ad_complete)
    (teaching_ready)
    (is_s1 ?s - step)
    (is_s2 ?s - step)
    (is_s3 ?s - step)
    (is_s4 ?s - step)
    (is_s5 ?s - step)
    (is_s6 ?s - step)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (is_s1 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (read_complete))
    )
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_s2 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (buy_complete))
    )
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 15552000)
    :condition (and (at start (step_pending ?s)) (at start (is_s3 ?s)) (at start (buy_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (practice_complete))
    )
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (is_s4 ?s)) (at start (practice_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (expert_complete))
    )
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_s5 ?s)) (at start (read_complete)) (at start (expert_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ad_complete))
    )
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_s6 ?s)) (at start (ad_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (teaching_ready))
    )
  )
)
