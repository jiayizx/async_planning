(define (domain pet_adoption)
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
    (s6_done)
    (s7_done)
    (s8_done)
    (s9_done)
    (s10_done)
    (s11_done)
    (s12_done)
    (s13_done)
    (s14_done)
    (s15_done)
  )

  (:durative-action finalize_contract
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s6_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done)))
  )

  (:durative-action schedule_home_visit
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s7_done)) (at start (s14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done)))
  )

  (:durative-action research_breeds
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done)))
  )

  (:durative-action purchase_bowls
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (s11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done)))
  )

  (:durative-action submit_application
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done)))
  )

  (:durative-action visit_shelter
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done)))
  )

  (:durative-action buy_carrier
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done)))
  )

  (:durative-action read_books
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done)))
  )

  (:durative-action purchase_bed
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done)))
  )

  (:durative-action call_vet
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done)))
  )

  (:durative-action clear_space
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done)))
  )

  (:durative-action host_inspection
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s7_done)) (at start (s14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done)))
  )

  (:durative-action pick_up_pet
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s10_done)) (at start (s12_done)) (at start (s2_done)) (at start (s7_done)) (at start (s14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done)))
  )

  (:durative-action wait_background_check
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (s5_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done)))
  )

  (:durative-action prepare_budget
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done)))
  )
)