(define (domain student-loan-comparison)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (unsubsidized_terms_reviewed)
    (unsubsidized_interest_calculated)
    (repayment_comparison_created)
    (unsubsidized_payment_estimated)
    (disclosures_downloaded)
    (lifetime_cost_summarized)
    (advisor_consulted)
    (education_rates_researched)
    (grace_period_verified)
    (interest_savings_calculated)
    (fsa_portal_accessed)
    (profile_updated)
    (award_letter_requested)
    (subsidized_limits_entered)
    (direct_loan_terms_searched)
  )

  (:durative-action review_unsubsidized_terms
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (disclosures_downloaded))
      (at start (award_letter_requested)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (unsubsidized_terms_reviewed))))

  (:durative-action calculate_unsubsidized_interest
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (disclosures_downloaded))
      (at start (subsidized_limits_entered)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (unsubsidized_interest_calculated))))

  (:durative-action create_repayment_comparison
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (education_rates_researched))
      (at start (interest_savings_calculated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (repayment_comparison_created))))

  (:durative-action estimate_unsubsidized_payment
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (unsubsidized_terms_reviewed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (unsubsidized_payment_estimated))))

  (:durative-action download_disclosures
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (fsa_portal_accessed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (disclosures_downloaded))))

  (:durative-action summarize_lifetime_cost
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (unsubsidized_interest_calculated))
      (at start (grace_period_verified)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lifetime_cost_summarized))))

  (:durative-action consult_financial_aid_advisor
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (education_rates_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (advisor_consulted))))

  (:durative-action research_education_rates
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (education_rates_researched))))

  (:durative-action verify_grace_period
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (direct_loan_terms_searched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (grace_period_verified))))

  (:durative-action calculate_interest_savings
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (unsubsidized_terms_reviewed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (interest_savings_calculated))))

  (:durative-action access_fsa_portal
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fsa_portal_accessed))))

  (:durative-action update_profile
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (fsa_portal_accessed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (profile_updated))))

  (:durative-action request_award_letter
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (award_letter_requested))))

  (:durative-action enter_subsidized_limits
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (education_rates_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (subsidized_limits_entered))))

  (:durative-action search_direct_loan_terms
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (direct_loan_terms_searched))))
)