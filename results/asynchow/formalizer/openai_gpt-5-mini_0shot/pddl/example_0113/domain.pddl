(define (domain learn-to-cook)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (bought_food)
    (videos_found)
    (videos_watched)
    (ingredients_cut)
    (assembled)
    (know_how)
  )

  ;; Step 1: buy the food items
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bought_food))
    )
  )

  ;; Step 2: look up cooking videos
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (videos_found))
    )
  )

  ;; Step 3: watch the videos (requires step2)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (videos_found)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (videos_watched))
    )
  )

  ;; Step 4: cut up the ingredients (requires step1)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (bought_food)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ingredients_cut))
    )
  )

  ;; Step 5: put ingredients all together (requires step4)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (ingredients_cut)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (assembled))
      (at end (know_how))
    )
  )
)
