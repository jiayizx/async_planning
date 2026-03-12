(define (domain get-noticed)
  (:requirements :durative-actions)
  (:predicates
    (apply_lipstick_pending)
    (apply_lipstick_done)
    (select_outfit_pending)
    (select_outfit_done)
    (deep_condition_hair_pending)
    (deep_condition_hair_done)
    (research_events_pending)
    (research_events_done)
    (practice_posture_pending)
    (practice_posture_done)
    (style_hair_pending)
    (style_hair_done)
    (shower_exfoliate_pending)
    (shower_exfoliate_done)
    (purchase_hair_products_pending)
    (purchase_hair_products_done)
    (arrive_venue_pending)
    (arrive_venue_done)
    (apply_fragrance_pending)
    (apply_fragrance_done)
    (put_on_earrings_pending)
    (put_on_earrings_done)
    (initiate_conversation_pending)
    (initiate_conversation_done)
    (exchange_contacts_pending)
    (exchange_contacts_done)
    (check_weather_pending)
    (check_weather_done)
    (make_eye_contact_pending)
    (make_eye_contact_done)
  )

  (:durative-action apply_lipstick
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (apply_lipstick_pending)) (at start (select_outfit_done)) (at start (shower_exfoliate_done)))
    :effect (and (at start (not (apply_lipstick_pending))) (at end (apply_lipstick_done)))
  )

  (:durative-action select_outfit
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (select_outfit_pending)) (at start (shower_exfoliate_done)))
    :effect (and (at start (not (select_outfit_pending))) (at end (select_outfit_done)))
  )

  (:durative-action deep_condition_hair
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (deep_condition_hair_pending)) (at start (purchase_hair_products_done)))
    :effect (and (at start (not (deep_condition_hair_pending))) (at end (deep_condition_hair_done)))
  )

  (:durative-action research_events
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (research_events_pending)) (at start (check_weather_done)))
    :effect (and (at start (not (research_events_pending))) (at end (research_events_done)))
  )

  (:durative-action practice_posture
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (practice_posture_pending)) (at start (style_hair_done)))
    :effect (and (at start (not (practice_posture_pending))) (at end (practice_posture_done)))
  )

  (:durative-action style_hair
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (style_hair_pending)) (at start (deep_condition_hair_done)))
    :effect (and (at start (not (style_hair_pending))) (at end (style_hair_done)))
  )

  (:durative-action shower_exfoliate
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (shower_exfoliate_pending))
    :effect (and (at start (not (shower_exfoliate_pending))) (at end (shower_exfoliate_done)))
  )

  (:durative-action purchase_hair_products
    :parameters ()
    :duration (= ?duration 2400)
    :condition (at start (purchase_hair_products_pending))
    :effect (and (at start (not (purchase_hair_products_pending))) (at end (purchase_hair_products_done)))
  )

  (:durative-action arrive_venue
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (arrive_venue_pending)) (at start (research_events_done)) (at start (style_hair_done)) (at start (put_on_earrings_done)))
    :effect (and (at start (not (arrive_venue_pending))) (at end (arrive_venue_done)))
  )

  (:durative-action apply_fragrance
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (apply_fragrance_pending)) (at start (shower_exfoliate_done)))
    :effect (and (at start (not (apply_fragrance_pending))) (at end (apply_fragrance_done)))
  )

  (:durative-action put_on_earrings
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (put_on_earrings_pending))
    :effect (and (at start (not (put_on_earrings_pending))) (at end (put_on_earrings_done)))
  )

  (:durative-action initiate_conversation
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (initiate_conversation_pending)) (at start (make_eye_contact_done)))
    :effect (and (at start (not (initiate_conversation_pending))) (at end (initiate_conversation_done)))
  )

  (:durative-action exchange_contacts
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (exchange_contacts_pending)) (at start (initiate_conversation_done)) (at start (make_eye_contact_done)))
    :effect (and (at start (not (exchange_contacts_pending))) (at end (exchange_contacts_done)))
  )

  (:durative-action check_weather
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (check_weather_pending))
    :effect (and (at start (not (check_weather_pending))) (at end (check_weather_done)))
  )

  (:durative-action make_eye_contact
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (make_eye_contact_pending)) (at start (research_events_done)) (at start (apply_fragrance_done)))
    :effect (and (at start (not (make_eye_contact_pending))) (at end (make_eye_contact_done)))
  )
)
