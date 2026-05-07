(define (domain conjugate_puedo)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (phrases_learned)
    (yo_puedo_done)
    (tu_puedes_done)
    (el_ella_puede_done)
    (emos_added)
    (ustedes_pueden_done)
    (ellos_ellas_pueden_done)
  )

  (:durative-action learn_phrases
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (phrases_learned)))
  )

  (:durative-action say_yo_puedo
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (phrases_learned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (yo_puedo_done)))
  )

  (:durative-action use_tu_puedes
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (phrases_learned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tu_puedes_done)))
  )

  (:durative-action choose_el_ella_puede
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (phrases_learned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (el_ella_puede_done)))
  )

  (:durative-action add_emos
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (phrases_learned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (emos_added)))
  )

  (:durative-action use_ustedes_pueden
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (phrases_learned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ustedes_pueden_done)))
  )

  (:durative-action choose_ellos_ellas_pueden
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (phrases_learned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ellos_ellas_pueden_done)))
  )
)