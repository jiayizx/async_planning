(define (domain marching_band_join)
  (:requirements :durative-actions)
  (:predicates
    (attend_meeting_pending)
    (attend_meeting_done)
    (research_rentals_pending)
    (research_rentals_done)
    (submit_health_form_pending)
    (submit_health_form_done)
    (attend_camp_pending)
    (attend_camp_done)
    (perform_exhibition_pending)
    (perform_exhibition_done)
    (pickup_instrument_pending)
    (pickup_instrument_done)
    (memorize_music_pending)
    (memorize_music_done)
    (pass_audition_pending)
    (pass_audition_done)
    (purchase_uniform_pending)
    (purchase_uniform_done)
    (fill_interest_form_pending)
    (fill_interest_form_done)
  )

  (:durative-action attend_meeting
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (attend_meeting_pending)) (at start (fill_interest_form_done)))
    :effect (and (at start (not (attend_meeting_pending))) (at end (attend_meeting_done)))
  )

  (:durative-action research_rentals
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (research_rentals_pending))
    :effect (and (at start (not (research_rentals_pending))) (at end (research_rentals_done)))
  )

  (:durative-action submit_health_form
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (submit_health_form_pending)) (at start (attend_meeting_done)))
    :effect (and (at start (not (submit_health_form_pending))) (at end (submit_health_form_done)))
  )

  (:durative-action attend_camp
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (attend_camp_pending)) (at start (pickup_instrument_done)) (at start (pass_audition_done)))
    :effect (and (at start (not (attend_camp_pending))) (at end (attend_camp_done)))
  )

  (:durative-action perform_exhibition
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (perform_exhibition_pending)) (at start (memorize_music_done)))
    :effect (and (at start (not (perform_exhibition_pending))) (at end (perform_exhibition_done)))
  )

  (:durative-action pickup_instrument
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (pickup_instrument_pending)) (at start (research_rentals_done)))
    :effect (and (at start (not (pickup_instrument_pending))) (at end (pickup_instrument_done)))
  )

  (:durative-action memorize_music
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (memorize_music_pending)) (at start (attend_camp_done)))
    :effect (and (at start (not (memorize_music_pending))) (at end (memorize_music_done)))
  )

  (:durative-action pass_audition
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (pass_audition_pending)) (at start (submit_health_form_done)))
    :effect (and (at start (not (pass_audition_pending))) (at end (pass_audition_done)))
  )

  (:durative-action purchase_uniform
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (purchase_uniform_pending)) (at start (attend_meeting_done)))
    :effect (and (at start (not (purchase_uniform_pending))) (at end (purchase_uniform_done)))
  )

  (:durative-action fill_interest_form
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (fill_interest_form_pending))
    :effect (and (at start (not (fill_interest_form_pending))) (at end (fill_interest_form_done)))
  )
)
