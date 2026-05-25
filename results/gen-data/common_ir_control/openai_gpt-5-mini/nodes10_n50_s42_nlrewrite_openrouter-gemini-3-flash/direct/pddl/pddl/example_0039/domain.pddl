(define (domain adventure_prep)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ;; semantic predicates (one unique per action)
    (dest_chosen_done)
    (flight_booked_done)
    (camera_bought_done)
    (pack_done)
    (drive_done)
    (camera_learned_done)
    (visa_done)
    (research_done)
    (itinerary_done)
    (laundry_done)
  )

  ;; Step 1: Choose a remote destination (7200s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dest_chosen_done))
    )
  )

  ;; Step 2: Book international flight tickets (1800s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (dest_chosen_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flight_booked_done))
    )
  )

  ;; Step 3: Purchase a high-quality camera (3600s)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (camera_bought_done))
    )
  )

  ;; Step 4: Pack the rugged hiking backpack (2700s)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (laundry_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pack_done))
    )
  )

  ;; Step 5: Drive to the airport (3600s)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (pack_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (drive_done))
    )
  )

  ;; Step 6: Learn how to use the manual camera settings (10800s)
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (camera_bought_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (camera_learned_done))
    )
  )

  ;; Step 7: Apply for a travel visa (604800s = 1 week)
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (flight_booked_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (visa_done))
    )
  )

  ;; Step 8: Research local landmarks to photograph (14400s)
  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (camera_learned_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (research_done))
    )
  )

  ;; Step 9: Create a detailed daily itinerary (7200s)
  ;; This is designated the final semantic outcome: it will require all other semantic predicates
  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (dest_chosen_done))
      (at start (flight_booked_done))
      (at start (camera_bought_done))
      (at start (pack_done))
      (at start (drive_done))
      (at start (camera_learned_done))
      (at start (visa_done))
      (at start (research_done))
      (at start (laundry_done))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (itinerary_done))
    )
  )

  ;; Step 10: Wash and dry all travel clothes (18000s)
  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (laundry_done))
    )
  )
)
