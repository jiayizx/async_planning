(define (domain menopause_treatment)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (consultation_scheduled)
    (exam_attended)
    (options_discussed)
    (pelvic_exam_done)
    (results_reviewed)
    (prescription_requested)
    (prescription_picked_up)
    (cream_applied)
    (lubricants_purchased)
    (lubricant_tested)
    (pamphlet_read)
    (reminder_set)
    (followup_scheduled)
    (symptoms_tracked)
  )

  (:durative-action step3_research
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action step1_schedule_consultation
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (consultation_scheduled)))
  )

  (:durative-action step6_attend_exam
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (consultation_scheduled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (exam_attended)))
  )

  (:durative-action step4_discuss_options
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (exam_attended)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (options_discussed)))
  )

  (:durative-action step7_pelvic_exam
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (options_discussed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pelvic_exam_done)))
  )

  (:durative-action step9_review_results
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (pelvic_exam_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (results_reviewed)))
  )

  (:durative-action step14_request_prescription
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (results_reviewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (prescription_requested)))
  )

  (:durative-action step5_pickup_prescription
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (prescription_requested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (prescription_picked_up)))
  )

  (:durative-action step2_apply_cream
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (prescription_picked_up)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cream_applied)))
  )

  (:durative-action step8_purchase_lubricants
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lubricants_purchased)))
  )

  (:durative-action step15_test_lubricant
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (lubricants_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lubricant_tested)))
  )

  (:durative-action step11_read_pamphlet
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (lubricant_tested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pamphlet_read)))
  )

  (:durative-action step12_set_reminder
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (exam_attended)) (at start (pamphlet_read)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (reminder_set)))
  )

  (:durative-action step13_schedule_followup
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (exam_attended)) (at start (results_reviewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (followup_scheduled)))
  )

  (:durative-action step10_track_symptoms
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (symptoms_tracked)))
  )
)