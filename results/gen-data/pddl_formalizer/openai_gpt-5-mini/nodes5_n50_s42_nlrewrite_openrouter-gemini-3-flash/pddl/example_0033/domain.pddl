(define (domain restrain-dog)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (clip_done)
    (calm_done)
    (retrieve_done)
    (guide_paws_done)
    (buckle_done)
    (restrained)
  )

  ;; Step 1: Clip the leash onto the collar (requires Step 2)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (at start (and (step_pending ?s) (calm_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (clip_done))))

  ;; Step 2: Calm the dog down with a treat (no prerequisites)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (calm_done))))

  ;; Step 3: Retrieve the harness from the closet (no prerequisites)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (retrieve_done))))

  ;; Step 5: Guide the dog's paws into the harness loops (requires Step 3)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (at start (and (step_pending ?s) (retrieve_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (guide_paws_done))))

  ;; Step 4: Fasten the safety buckle (requires Step 5)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (and (step_pending ?s) (guide_paws_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (buckle_done))
              (at end (restrained)))))
