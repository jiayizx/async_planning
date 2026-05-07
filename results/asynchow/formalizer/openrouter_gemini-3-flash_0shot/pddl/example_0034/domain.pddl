(define (domain impress_girl)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (wardrobe_checked)
    (lines_found)
    (lines_memorized)
    (mirror_checked)
    (outfit_ready)
    (at_school)
    (girl_impressed)
  )

  (:durative-action look_at_wardrobe
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wardrobe_checked)))
  )

  (:durative-action look_up_lines
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lines_found)))
  )

  (:durative-action memorize_lines
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (lines_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lines_memorized)))
  )

  (:durative-action put_together_outfit
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (wardrobe_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outfit_ready)))
  )

  (:durative-action look_in_mirror
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (lines_memorized)) (at start (outfit_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mirror_checked)))
  )

  (:durative-action walk_to_school
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (mirror_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_school)))
  )

  (:durative-action talk_to_girl
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (at_school)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (girl_impressed)))
  )
)