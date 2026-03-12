(define (domain identify_british_shorthair)
  (:requirements :durative-actions)
  (:predicates
    (examine_coat_pending) (examine_coat_done)
    (measure_legs_pending) (measure_legs_done)
    (observe_profile_pending) (observe_profile_done)
    (inspect_eyes_pending) (inspect_eyes_done)
    (research_breeders_pending) (research_breeders_done)
    (locate_cat_pending) (locate_cat_done)
    (assess_roundness_pending) (assess_roundness_done)
    (check_tail_pending) (check_tail_done)
    (approach_cat_pending) (approach_cat_done)
    (verify_body_pending) (verify_body_done)
    (record_weight_pending) (record_weight_done)
    (take_photos_pending) (take_photos_done)
    (compare_traits_pending) (compare_traits_done)
    (consult_professional_pending) (consult_professional_done)
    (receive_certificate_pending) (receive_certificate_done)
  )

  (:durative-action examine_coat
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (examine_coat_pending))
    :effect (and (at start (not (examine_coat_pending))) (at end (examine_coat_done)))
  )

  (:durative-action measure_legs
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (measure_legs_pending)) (at start (record_weight_done)))
    :effect (and (at start (not (measure_legs_pending))) (at end (measure_legs_done)))
  )

  (:durative-action observe_profile
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (observe_profile_pending)) (at start (record_weight_done)))
    :effect (and (at start (not (observe_profile_pending))) (at end (observe_profile_done)))
  )

  (:durative-action inspect_eyes
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (inspect_eyes_pending)) (at start (assess_roundness_done)))
    :effect (and (at start (not (inspect_eyes_pending))) (at end (inspect_eyes_done)))
  )

  (:durative-action research_breeders
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (research_breeders_pending))
    :effect (and (at start (not (research_breeders_pending))) (at end (research_breeders_done)))
  )

  (:durative-action locate_cat
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (locate_cat_pending)) (at start (research_breeders_done)))
    :effect (and (at start (not (locate_cat_pending))) (at end (locate_cat_done)))
  )

  (:durative-action assess_roundness
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (assess_roundness_pending)) (at start (observe_profile_done)))
    :effect (and (at start (not (assess_roundness_pending))) (at end (assess_roundness_done)))
  )

  (:durative-action check_tail
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (check_tail_pending)) (at start (take_photos_done)))
    :effect (and (at start (not (check_tail_pending))) (at end (check_tail_done)))
  )

  (:durative-action approach_cat
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (approach_cat_pending)) (at start (locate_cat_done)))
    :effect (and (at start (not (approach_cat_pending))) (at end (approach_cat_done)))
  )

  (:durative-action verify_body
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (verify_body_pending)) (at start (inspect_eyes_done)))
    :effect (and (at start (not (verify_body_pending))) (at end (verify_body_done)))
  )

  (:durative-action record_weight
    :parameters ()
    :duration (= ?duration 480)
    :condition (at start (record_weight_pending))
    :effect (and (at start (not (record_weight_pending))) (at end (record_weight_done)))
  )

  (:durative-action take_photos
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (take_photos_pending)) (at start (approach_cat_done)))
    :effect (and (at start (not (take_photos_pending))) (at end (take_photos_done)))
  )

  (:durative-action compare_traits
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (compare_traits_pending)) (at start (examine_coat_done)) (at start (verify_body_done)))
    :effect (and (at start (not (compare_traits_pending))) (at end (compare_traits_done)))
  )

  (:durative-action consult_professional
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (consult_professional_pending))
    :effect (and (at start (not (consult_professional_pending))) (at end (consult_professional_done)))
  )

  (:durative-action receive_certificate
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (receive_certificate_pending)) (at start (consult_professional_done)))
    :effect (and (at start (not (receive_certificate_pending))) (at end (receive_certificate_done)))
  )
)
