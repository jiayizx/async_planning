(define (domain life_insurance_planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (debt_calculated)
    (insurance_researched)
    (rates_compared)
    (applications_submitted)
    (coverage_determined)
    (medical_exam_done)
    (history_gathered)
    (exclusions_reviewed)
    (advisor_consulted)
    (docs_uploaded)
    (beneficiaries_finalized)
    (shortlist_created)
    (riders_evaluated)
    (quotes_received)
    (ratings_verified)
    (reviews_read)
    (budget_discussed)
    (employer_benefits_checked)
    (inflation_estimated)
    (funeral_factored)
    (income_documented)
    (duration_selected)
    (tax_compared)
    (receipts_reviewed)
    (income_years_determined)
    (webinar_attended)
    (habits_listed)
    (underwriting_confirmed)
    (payment_freq_decided)
    (policy_signed)
  )

  (:durative-action step1_calc_debt
    :duration (= ?duration 7200)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (debt_calculated)))
  )

  (:durative-action step2_research_insurance
    :duration (= ?duration 10800)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (insurance_researched)))
  )

  (:durative-action step3_compare_rates
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step3)) (at start (riders_evaluated)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (rates_compared)))
  )

  (:durative-action step4_submit_apps
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step4)) (at start (shortlist_created)) (at start (quotes_received)) (at start (receipts_reviewed)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (applications_submitted)))
  )

  (:durative-action step5_determine_coverage
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step5)) (at start (debt_calculated)) (at start (advisor_consulted)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (coverage_determined)))
  )

  (:durative-action step6_medical_exam
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step6)) (at start (applications_submitted)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (medical_exam_done)))
  )

  (:durative-action step7_gather_history
    :duration (= ?duration 10800)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (history_gathered)))
  )

  (:durative-action step8_review_exclusions
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step8)) (at start (insurance_researched)) (at start (reviews_read)) (at start (income_documented)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (exclusions_reviewed)))
  )

  (:durative-action step9_consult_advisor
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step9)) (at start (webinar_attended)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (advisor_consulted)))
  )

  (:durative-action step10_upload_docs
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step10)) (at start (history_gathered)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (docs_uploaded)))
  )

  (:durative-action step11_finalize_beneficiaries
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step11)) (at start (budget_discussed)) (at start (duration_selected)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (beneficiaries_finalized)))
  )

  (:durative-action step12_create_shortlist
    :duration (= ?duration 3600)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (shortlist_created)))
  )

  (:durative-action step13_evaluate_riders
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step13)) (at start (coverage_determined)) (at start (income_years_determined)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (riders_evaluated)))
  )

  (:durative-action step14_request_quotes
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step14)) (at start (rates_compared)) (at start (income_documented)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (quotes_received)))
  )

  (:durative-action step15_verify_ratings
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step15)) (at start (docs_uploaded)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (ratings_verified)))
  )

  (:durative-action step16_read_reviews
    :duration (= ?duration 7200)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (reviews_read)))
  )

  (:durative-action step17_discuss_budget
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step17)) (at start (insurance_researched)) (at start (payment_freq_decided)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (budget_discussed)))
  )

  (:durative-action step18_check_employer
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step18)) (at start (payment_freq_decided)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (employer_benefits_checked)))
  )

  (:durative-action step19_estimate_inflation
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step19)) (at start (funeral_factored)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (inflation_estimated)))
  )

  (:durative-action step20_factor_funeral
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step20)) (at start (coverage_determined)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (funeral_factored)))
  )

  (:durative-action step21_document_income
    :duration (= ?duration 7200)
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (income_documented)))
  )

  (:durative-action step22_select_term
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step22)) (at start (exclusions_reviewed)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (duration_selected)))
  )

  (:durative-action step23_compare_tax
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step23)) (at start (advisor_consulted)) (at start (reviews_read)) (at start (employer_benefits_checked)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (tax_compared)))
  )

  (:durative-action step24_review_receipts
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step24)) (at start (underwriting_confirmed)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (receipts_reviewed)))
  )

  (:durative-action step25_determine_years
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step25)) (at start (coverage_determined)) (at start (inflation_estimated)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (income_years_determined)))
  )

  (:durative-action step26_attend_webinar
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step26)) (at start (employer_benefits_checked)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (webinar_attended)))
  )

  (:durative-action step27_list_habits
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step27)) (at start (docs_uploaded)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (habits_listed)))
  )

  (:durative-action step28_confirm_underwriting
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step28)) (at start (ratings_verified)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (underwriting_confirmed)))
  )

  (:durative-action step29_decide_payment
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step29)) (at start (receipts_reviewed)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (payment_freq_decided)))
  )

  (:durative-action step30_sign_policy
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step30)) (at start (medical_exam_done)) (at start (receipts_reviewed)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (policy_signed)))
  )
)