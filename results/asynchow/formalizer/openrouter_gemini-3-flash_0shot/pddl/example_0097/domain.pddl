(define (domain church_choir)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (clothing_gathered)
    (voice_warmed)
    (verses_sung)
    (ready_for_church)
    (driven_to_church)
    (waited_for_singing)
  )

  (:durative-action gather_clothing
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clothing_gathered)))
  )

  (:durative-action get_ready
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (clothing_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ready_for_church)))
  )

  (:durative-action drive_to_church
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (ready_for_church)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (driven_to_church)))
  )

  (:durative-action warm_up_voice
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (driven_to_church)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (voice_warmed)))
  )

  (:durative-action wait_for_singing
    :parameters (?s - step)
    :duration (= ?duration 3000)
    :condition (and (at start (step_pending ?s)) (at start (driven_to_church)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waited_for_singing)))
  )

  (:durative-action sing_verses
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (voice_warmed)) (at start (waited_for_singing)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (verses_sung)))
  )
)