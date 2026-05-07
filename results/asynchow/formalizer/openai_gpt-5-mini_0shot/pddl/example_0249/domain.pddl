(define (domain negotiate-lease)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (lease_negotiated)
  )

  ;; Step 1: Speak to property manager/owner (3600s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s4_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s1_done))
            )
  )

  ;; Step 2: Consider hiring a real estate agent (2 weeks = 1209600s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s2_done))
            )
  )

  ;; Step 3: Check parking, ingress/egress, other items (172800s = 2 days)
  ;; Produces the final semantic predicate lease_negotiated so the goal forces completion of the critical chain
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (s4_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s3_done))
              (at end (lease_negotiated))
            )
  )

  ;; Step 4: Find at least two properties that suit your needs (2 weeks = 1209600s)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (s4_done))
            )
  )
)
