(define (domain impress-girl)
  (:requirements :durative-actions)
  (:predicates
    (look_at_wardrobe_pending)
    (look_at_wardrobe_done)
    (look_up_pickup_lines_pending)
    (look_up_pickup_lines_done)
    (memorize_pickup_lines_pending)
    (memorize_pickup_lines_done)
    (look_in_mirror_pending)
    (look_in_mirror_done)
    (put_together_fancy_outfit_pending)
    (put_together_fancy_outfit_done)
    (walk_to_school_pending)
    (walk_to_school_done)
    (talk_to_girl_pending)
    (talk_to_girl_done)
  )

  (:durative-action look_at_wardrobe
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (look_at_wardrobe_pending))
    :effect (and (at start (not (look_at_wardrobe_pending))) (at end (look_at_wardrobe_done)))
  )

  (:durative-action look_up_pickup_lines
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (look_up_pickup_lines_pending))
    :effect (and (at start (not (look_up_pickup_lines_pending))) (at end (look_up_pickup_lines_done)))
  )

  (:durative-action memorize_pickup_lines
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (memorize_pickup_lines_pending)) (at start (look_up_pickup_lines_done)))
    :effect (and (at start (not (memorize_pickup_lines_pending))) (at end (memorize_pickup_lines_done)))
  )

  (:durative-action put_together_fancy_outfit
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (put_together_fancy_outfit_pending)) (at start (look_at_wardrobe_done)))
    :effect (and (at start (not (put_together_fancy_outfit_pending))) (at end (put_together_fancy_outfit_done)))
  )

  (:durative-action look_in_mirror
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (look_in_mirror_pending)) (at start (memorize_pickup_lines_done)) (at start (put_together_fancy_outfit_done)))
    :effect (and (at start (not (look_in_mirror_pending))) (at end (look_in_mirror_done)))
  )

  (:durative-action walk_to_school
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (walk_to_school_pending)) (at start (look_in_mirror_done)))
    :effect (and (at start (not (walk_to_school_pending))) (at end (walk_to_school_done)))
  )

  (:durative-action talk_to_girl
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (talk_to_girl_pending)) (at start (walk_to_school_done)))
    :effect (and (at start (not (talk_to_girl_pending))) (at end (talk_to_girl_done)))
  )
)
