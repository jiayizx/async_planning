(define (domain app_development)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (idea_coming_up_done)
    (functions_planned_done)
    (logistics_planned_done)
    (code_written_done)
    (app_tested_done))
  
  (:durative-action step1_come_up_with_idea
    :parameters (?s - step)
    :duration (= (?duration) 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (idea_coming_up_done))))

  (:durative-action step2_plan_app_functions
    :parameters (?s - step)
    :duration (= (?duration) 7200)
    :condition (and (at start (step_pending ?s))
                    (at start (idea_coming_up_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (functions_planned_done))))

  (:durative-action step3_plan_logistics_of_app
    :parameters (?s - step)
    :duration (= (?duration) 604800)
    :condition (and (at start (step_pending ?s))
                    (at start (idea_coming_up_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (logistics_planned_done))))

  (:durative-action step4_write_code_for_app
    :parameters (?s - step)
    :duration (= (?duration) 432000)
    :condition (and (at start (step_pending ?s))
                    (at start (functions_planned_done))
                    (at start (logistics_planned_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (code_written_done))))

  (:durative-action step5_test_app_out
    :parameters (?s - step)
    :duration (= (?duration) 604800)
    :condition (and (at start (step_pending ?s))
                    (at start (code_written_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (app_tested_done))))
)