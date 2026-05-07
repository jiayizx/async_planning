(define (domain change_name_divorce)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (petition_filed)
    (ss_card_done)
    (license_done)
    (passport_done)
  )

  (:durative-action step1_petition
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (petition_filed)))
  )

  (:durative-action step2_ss_card
    :parameters (?s - step)
    :duration (= ?duration 2419200)
    :condition (and (at start (step_pending ?s)) (at start (petition_filed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ss_card_done)))
  )

  (:durative-action step3_license
    :parameters (?s - step)
    :duration (= ?duration 3628800)
    :condition (and (at start (step_pending ?s)) (at start (petition_filed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (license_done)))
  )

  (:durative-action step4_passport
    :parameters (?s - step)
    :duration (= ?duration 3628800)
    :condition (and (at start (step_pending ?s)) (at start (petition_filed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (passport_done)))
  )
)