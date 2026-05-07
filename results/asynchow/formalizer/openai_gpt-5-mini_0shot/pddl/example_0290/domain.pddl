(define (domain make_coconut_sugar_scrub)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (gather_done)
    (added_sugar)
    (added_oil)
    (mixed)
    (applied)
    (rinsed)
    (dried_done)
  )

  ;; Step 1: Gather all materials (5 minutes = 300 seconds)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (gather_done))
    )
  )

  ;; Step 2: Add sugar (1 minute = 60 seconds)  ; requires gather_done (i.e., step1 finished)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (gather_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (added_sugar))
    )
  )

  ;; Step 3: Add coconut oil (1 minute = 60 seconds) ; requires gather_done
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (gather_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (added_oil))
    )
  )

  ;; Step 4: Mix sugar and oil together (2 minutes = 120 seconds) ; requires added_sugar and added_oil
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (added_sugar)) (at start (added_oil)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mixed))
    )
  )

  ;; Step 5: Apply to lips and face (5 minutes = 300 seconds) ; requires mixed
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (mixed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (applied))
    )
  )

  ;; Step 6: Rinse off using warm water (3 minutes = 180 seconds) ; requires applied
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (applied)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rinsed))
    )
  )

  ;; Step 7: Dry skin completely (3 minutes = 180 seconds) ; requires rinsed
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (rinsed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dried_done))
    )
  )
)
