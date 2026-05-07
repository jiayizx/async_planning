(define (domain make-movie)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (written_done)
    (backdrop_planned)
    (cast_hired)
    (lines_learned)
    (footage_shot)
  )

  ;; Step 1: write a script
  (:durative-action do_step1_write_script
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (written_done))
    )
  )

  ;; Step 2: plan a back drop (requires step1)
  (:durative-action do_step2_plan_backdrop
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (written_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (backdrop_planned))
    )
  )

  ;; Step 3: hire a cast (requires step2)
  (:durative-action do_step3_hire_cast
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (backdrop_planned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cast_hired))
    )
  )

  ;; Step 4: learn the lines (requires step2)
  (:durative-action do_step4_learn_lines
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (backdrop_planned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lines_learned))
    )
  )

  ;; Step 5: shoot with a camera and film (requires step3 and step4)
  (:durative-action do_step5_shoot_film
    :parameters (?s - step)
    :duration (= ?duration 25920000)
    :condition (and (at start (step_pending ?s)) (at start (cast_hired)) (at start (lines_learned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (footage_shot))
    )
  )
)
