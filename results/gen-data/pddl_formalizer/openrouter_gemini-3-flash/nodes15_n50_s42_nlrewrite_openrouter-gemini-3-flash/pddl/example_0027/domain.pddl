(define (domain cat_identification)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (coat_examined)
    (legs_measured)
    (profile_observed)
    (ears_inspected)
    (research_done)
    (guide_downloaded)
    (paws_checked)
    (tail_analyzed)
    (face_compared)
    (eyes_looked)
    (temperament_checked)
    (smile_verified)
    (report_finalized)
    (area_cleaned)
    (records_filed)
  )

  (:durative-action step1
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (smile_verified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coat_examined)))
  )

  (:durative-action step2
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (temperament_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (legs_measured)))
  )

  (:durative-action step3
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (temperament_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (profile_observed)))
  )

  (:durative-action step4
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (paws_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ears_inspected)))
  )

  (:durative-action step5
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action step6
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (guide_downloaded)))
  )

  (:durative-action step7
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (profile_observed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paws_checked)))
  )

  (:durative-action step8
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (smile_verified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tail_analyzed)))
  )

  (:durative-action step9
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (guide_downloaded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (face_compared)))
  )

  (:durative-action step10
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (ears_inspected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eyes_looked)))
  )

  (:durative-action step11
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (tail_analyzed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (temperament_checked)))
  )

  (:durative-action step12
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (face_compared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (smile_verified)))
  )

  (:durative-action step13
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (coat_examined)) (at start (eyes_looked)) (at start (temperament_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (report_finalized)))
  )

  (:durative-action step14
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (area_cleaned)))
  )

  (:durative-action step15
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (area_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (records_filed)))
  )
)