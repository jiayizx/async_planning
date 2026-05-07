(define (domain diet_planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (recommendations_obtained)
    (research_done)
    (comparison_done)
    (doctor_consulted)
    (commitment_made)
  )

  (:durative-action get_recommendations
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (recommendations_obtained)))
  )

  (:durative-action lookup_diets
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action compare_diets
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (comparison_done)))
  )

  (:durative-action talk_to_doctor
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (doctor_consulted)))
  )

  (:durative-action make_commitment
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and 
      (at start (step_pending ?s))
      (at start (recommendations_obtained))
      (at start (research_done))
      (at start (comparison_done))
      (at start (doctor_consulted))
    )
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (commitment_made)))
  )
)