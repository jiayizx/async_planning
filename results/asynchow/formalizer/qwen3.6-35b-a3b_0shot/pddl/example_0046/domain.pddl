(define (domain flying_as_a_kid)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (flight_school_done)
    (plane_found)
    (financing_done)
    (plane_bought)
    (at_runway))
  
  (:durative-action do_flight_school
    :parameters ()
    :duration (= ?duration 63072000)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (flight_school_done))))

  (:durative-action do_find_plane
    :parameters ()
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending step2))
                    (at start (flight_school_done)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (plane_found))))

  (:durative-action do_talk_bank
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step3))
                    (at start (flight_school_done)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (financing_done))))

  (:durative-action do_buy_plane
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step4))
                    (at start (plane_found))
                    (at start (financing_done)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (plane_bought))))

  (:durative-action do_go_runway
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step5))
                    (at start (plane_bought)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (at_runway))))
)