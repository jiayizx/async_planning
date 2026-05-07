(define (domain piano_teaching)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (articles_read)
    (piano_bought)
    (piano_practiced)
    (expert_status_achieved)
    (ad_created)
    (student_found)
  )

  (:durative-action read_articles
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (articles_read)))
  )

  (:durative-action buy_piano
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (piano_bought)))
  )

  (:durative-action practice_piano
    :parameters (?s - step)
    :duration (= ?duration 15552000)
    :condition (and (at start (step_pending ?s)) (at start (piano_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (piano_practiced)))
  )

  (:durative-action become_expert
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (piano_practiced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (expert_status_achieved)))
  )

  (:durative-action create_ad
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (articles_read)) (at start (expert_status_achieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ad_created)))
  )

  (:durative-action find_student
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (ad_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (student_found)))
  )
)