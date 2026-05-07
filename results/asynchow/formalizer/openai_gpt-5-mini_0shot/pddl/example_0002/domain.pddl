(define (domain travel-to-europe)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (applied)
    (retrieved)
    (researched)
    (booked)
    (packed)
    (prepared)
  )

  ;; Step 1: apply for a passport
  (:durative-action do_step1_apply_passport
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (applied)) )
  )

  ;; Step 2: retrieve passport when ready (must follow step 1)
  (:durative-action do_step2_retrieve_passport
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (applied)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (retrieved)) )
  )

  ;; Step 3: research European destinations (must follow step 2)
  (:durative-action do_step3_research
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (retrieved)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (researched)) )
  )

  ;; Step 4: book plane ticket in advance (must follow step 3)
  (:durative-action do_step4_book_ticket
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (researched)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (booked)) )
  )

  ;; Step 5: pack bags (must follow step 4)
  (:durative-action do_step5_pack
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (booked)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (packed)) )
  )

  ;; Step 6: prepare for departure date (must follow step 4)
  (:durative-action do_step6_prepare_departure
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (booked)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (prepared)) )
  )
)
