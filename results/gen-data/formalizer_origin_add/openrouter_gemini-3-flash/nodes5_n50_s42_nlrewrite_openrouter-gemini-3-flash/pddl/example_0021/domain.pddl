(define (domain liver_treatment_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (consultation_done)
    (ultrasound_done)
    (biopsy_done)
    (diet_done)
    (monitoring_done)
  )

  (:durative-action schedule_consultation
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (consultation_done)))
  )

  (:durative-action conduct_ultrasound
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (consultation_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ultrasound_done)))
  )

  (:durative-action perform_biopsy
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (ultrasound_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (biopsy_done)))
  )

  (:durative-action administer_diet
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (diet_done)))
  )

  (:durative-action monitor_enzymes
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (biopsy_done)) (at start (diet_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (monitoring_done)))
  )
)