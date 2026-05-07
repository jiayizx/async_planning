(define (domain make_a_living)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (research_done)
               (decide_done)
               (study_done)
               (work_done)
               (name_done)
               (agent_done))

  (:durative-action step1
    :duration (= ?duration 432000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (research_done))))

  (:durative-action step2
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (decide_done))))

  (:durative-action step3
    :duration (= ?duration 94608000)
    :condition (and (at start (step_pending ?s)) (at start (decide_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (study_done))))

  (:durative-action step4
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending ?s)) (at start (decide_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (work_done))))

  (:durative-action step5
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending ?s)) (at start (study_done)) (at start (work_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (name_done))))

  (:durative-action step6
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (name_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (agent_done))))
)