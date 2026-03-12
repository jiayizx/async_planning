(define (domain balloon_pet)
  (:requirements :durative-actions)
  (:predicates
    (draw_face_pending)
    (draw_face_done)
    (twist_legs_pending)
    (twist_legs_done)
    (stretch_balloon_pending)
    (stretch_balloon_done)
    (inflate_balloon_pending)
    (inflate_balloon_done)
    (choose_color_pending)
    (choose_color_done)
  )

  (:durative-action draw_face
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (draw_face_pending)) (at start (choose_color_done)))
    :effect (and (at start (not (draw_face_pending))) (at end (draw_face_done)))
  )

  (:durative-action twist_legs
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (twist_legs_pending)) (at start (inflate_balloon_done)))
    :effect (and (at start (not (twist_legs_pending))) (at end (twist_legs_done)))
  )

  (:durative-action stretch_balloon
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (stretch_balloon_pending))
    :effect (and (at start (not (stretch_balloon_pending))) (at end (stretch_balloon_done)))
  )

  (:durative-action inflate_balloon
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (inflate_balloon_pending)) (at start (stretch_balloon_done)))
    :effect (and (at start (not (inflate_balloon_pending))) (at end (inflate_balloon_done)))
  )

  (:durative-action choose_color
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (choose_color_pending))
    :effect (and (at start (not (choose_color_pending))) (at end (choose_color_done)))
  )
)
