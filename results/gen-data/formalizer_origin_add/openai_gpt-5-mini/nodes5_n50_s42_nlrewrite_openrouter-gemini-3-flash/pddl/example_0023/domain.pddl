(define (domain help_child_community)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (register_done)
    (design_done)
    (setup_done)
    (deliver_done)
  )

  ;; Step 1: Research local non-profit organizations and volunteer opportunities
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (research_done))
    )
  )

  ;; Step 2: Deliver the final collection of donated goods to the community center
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (setup_done)) (at start (register_done)) (at start (research_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (deliver_done))
    )
  )

  ;; Step 3: Register your child for a specific neighborhood cleanup or donation drive
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (register_done))
    )
  )

  ;; Step 4: Design and print flyers to recruit other neighborhood kids
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (register_done)) (at start (research_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (design_done))
    )
  )

  ;; Step 5: Set up a collection bin on the porch and gather items for one week
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (register_done)) (at start (research_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (setup_done))
    )
  )
)
