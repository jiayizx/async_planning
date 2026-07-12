(define (domain event-promoter)
  (:requirements :durative-actions :typing)
  (:types
    step
    step1type step2type step3type step4type step5type
    step6type step7type step8type step9type step10type
    step11type step12type step13type step14type step15type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (brand_identity_designed)
    (sponsorship_template_drafted)
    (social_profile_created)
    (event_course_completed)
    (venue_contract_negotiated)
    (bank_account_established)
    (business_name_registered)
    (corporate_sponsors_contacted)
    (marketing_campaign_launched)
    (venue_walkthrough_completed)
    (promotional_website_built)
    (business_license_obtained)
    (keynote_speaker_secured)
    (market_research_completed)
    (promotional_mixer_hosted)
  )

  (:durative-action design_brand_identity
    :parameters (?s - step1type)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (business_name_registered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (brand_identity_designed))
    )
  )

  (:durative-action draft_sponsorship_template
    :parameters (?s - step2type)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (market_research_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sponsorship_template_drafted))
    )
  )

  (:durative-action create_social_profile
    :parameters (?s - step3type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (market_research_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (social_profile_created))
    )
  )

  (:durative-action complete_event_management_course
    :parameters (?s - step4type)
    :duration (= ?duration 2592000)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (event_course_completed))
    )
  )

  (:durative-action negotiate_venue_contract
    :parameters (?s - step5type)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (promotional_website_built))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (venue_contract_negotiated))
    )
  )

  (:durative-action establish_business_bank_account
    :parameters (?s - step6type)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bank_account_established))
    )
  )

  (:durative-action register_business_name
    :parameters (?s - step7type)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (business_license_obtained))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (business_name_registered))
    )
  )

  (:durative-action contact_corporate_sponsors
    :parameters (?s - step8type)
    :duration (= ?duration 432000)
    :condition (and
      (at start (step_pending ?s))
      (at start (sponsorship_template_drafted))
      (at start (bank_account_established))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (corporate_sponsors_contacted))
    )
  )

  (:durative-action launch_marketing_campaign
    :parameters (?s - step9type)
    :duration (= ?duration 1209600)
    :condition (and
      (at start (step_pending ?s))
      (at start (keynote_speaker_secured))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (marketing_campaign_launched))
    )
  )

  (:durative-action conduct_venue_walkthrough
    :parameters (?s - step10type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (venue_contract_negotiated))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (venue_walkthrough_completed))
    )
  )

  (:durative-action build_promotional_website
    :parameters (?s - step11type)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (brand_identity_designed))
      (at start (bank_account_established))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (promotional_website_built))
    )
  )

  (:durative-action obtain_business_license
    :parameters (?s - step12type)
    :duration (= ?duration 1209600)
    :condition (and
      (at start (step_pending ?s))
      (at start (event_course_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (business_license_obtained))
    )
  )

  (:durative-action secure_keynote_speaker
    :parameters (?s - step13type)
    :duration (= ?duration 864000)
    :condition (and
      (at start (step_pending ?s))
      (at start (promotional_website_built))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (keynote_speaker_secured))
    )
  )

  (:durative-action conduct_market_research
    :parameters (?s - step14type)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (market_research_completed))
    )
  )

  (:durative-action host_promotional_mixer
    :parameters (?s - step15type)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending ?s))
      (at start (marketing_campaign_launched))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (promotional_mixer_hosted))
    )
  )
)