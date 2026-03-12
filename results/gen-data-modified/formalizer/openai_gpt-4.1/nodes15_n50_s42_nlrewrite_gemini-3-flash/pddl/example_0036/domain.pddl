(define (domain event_promoter)
  (:requirements :durative-actions)
  (:predicates
    (register_domain_pending)
    (register_domain_done)
    (design_flyers_pending)
    (design_flyers_done)
    (create_portfolio_pending)
    (create_portfolio_done)
    (attend_mixer_pending)
    (attend_mixer_done)
    (sign_venue_contract_pending)
    (sign_venue_contract_done)
    (research_laws_pending)
    (research_laws_done)
    (apply_license_pending)
    (apply_license_done)
    (launch_campaign_pending)
    (launch_campaign_done)
    (sell_early_bird_pending)
    (sell_early_bird_done)
    (hire_staff_pending)
    (hire_staff_done)
    (open_bank_pending)
    (open_bank_done)
    (complete_course_pending)
    (complete_course_done)
    (setup_ticketing_pending)
    (setup_ticketing_done)
    (purchase_software_pending)
    (purchase_software_done)
    (host_launch_event_pending)
    (host_launch_event_done)
  )

  (:durative-action register_domain
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (register_domain_pending)) (at start (apply_license_done)) (at start (complete_course_done)))
    :effect (and (at start (not (register_domain_pending))) (at end (register_domain_done)))
  )

  (:durative-action design_flyers
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (design_flyers_pending)) (at start (purchase_software_done)))
    :effect (and (at start (not (design_flyers_pending))) (at end (design_flyers_done)))
  )

  (:durative-action create_portfolio
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (create_portfolio_pending)) (at start (purchase_software_done)))
    :effect (and (at start (not (create_portfolio_pending))) (at end (create_portfolio_done)))
  )

  (:durative-action attend_mixer
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (attend_mixer_pending))
    :effect (and (at start (not (attend_mixer_pending))) (at end (attend_mixer_done)))
  )

  (:durative-action sign_venue_contract
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (sign_venue_contract_pending)) (at start (open_bank_done)))
    :effect (and (at start (not (sign_venue_contract_pending))) (at end (sign_venue_contract_done)))
  )

  (:durative-action research_laws
    :parameters ()
    :duration (= ?duration 18000)
    :condition (at start (research_laws_pending))
    :effect (and (at start (not (research_laws_pending))) (at end (research_laws_done)))
  )

  (:durative-action apply_license
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (apply_license_pending)) (at start (complete_course_done)))
    :effect (and (at start (not (apply_license_pending))) (at end (apply_license_done)))
  )

  (:durative-action launch_campaign
    :parameters ()
    :duration (= ?duration 864000)
    :condition (and (at start (launch_campaign_pending)) (at start (design_flyers_done)) (at start (research_laws_done)))
    :effect (and (at start (not (launch_campaign_pending))) (at end (launch_campaign_done)))
  )

  (:durative-action sell_early_bird
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (sell_early_bird_pending)) (at start (setup_ticketing_done)))
    :effect (and (at start (not (sell_early_bird_pending))) (at end (sell_early_bird_done)))
  )

  (:durative-action hire_staff
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (hire_staff_pending)) (at start (sign_venue_contract_done)))
    :effect (and (at start (not (hire_staff_pending))) (at end (hire_staff_done)))
  )

  (:durative-action open_bank
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (open_bank_pending)) (at start (register_domain_done)) (at start (research_laws_done)))
    :effect (and (at start (not (open_bank_pending))) (at end (open_bank_done)))
  )

  (:durative-action complete_course
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (complete_course_pending)) (at start (attend_mixer_done)))
    :effect (and (at start (not (complete_course_pending))) (at end (complete_course_done)))
  )

  (:durative-action setup_ticketing
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (setup_ticketing_pending)) (at start (open_bank_done)))
    :effect (and (at start (not (setup_ticketing_pending))) (at end (setup_ticketing_done)))
  )

  (:durative-action purchase_software
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (purchase_software_pending))
    :effect (and (at start (not (purchase_software_pending))) (at end (purchase_software_done)))
  )

  (:durative-action host_launch_event
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (host_launch_event_pending)) (at start (sell_early_bird_done)))
    :effect (and (at start (not (host_launch_event_pending))) (at end (host_launch_event_done)))
  )
)
