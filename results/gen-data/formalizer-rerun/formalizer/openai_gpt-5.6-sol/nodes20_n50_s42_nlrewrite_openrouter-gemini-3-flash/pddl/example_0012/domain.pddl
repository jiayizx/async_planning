(define (domain freelance-income)
  (:requirements :typing :durative-actions)
  (:types
    step
    step1_type step2_type step3_type step4_type step5_type
    step6_type step7_type step8_type step9_type step10_type
    step11_type step12_type step13_type step14_type step15_type
    step16_type step17_type step18_type step19_type step20_type - step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (logo_designed)
    (clients_researched)
    (contract_drafted)
    (portfolio_created)
    (contract_reviewed)
    (domain_registered)
    (bank_account_opened)
    (contract_published)
    (case_studies_written)
    (business_cards_printed)
    (permit_applied_for)
    (headshots_taken)
    (accounting_setup)
    (capital_deposited)
    (income_earning_started)
    (business_name_created)
    (laptop_purchased)
    (outreach_sent)
    (permit_received)
    (software_installed))

  (:durative-action design_logo
    :parameters (?s - step1_type)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (portfolio_created))
      (at start (domain_registered)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (logo_designed))))

  (:durative-action research_clients
    :parameters (?s - step2_type)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (clients_researched))))

  (:durative-action draft_contract
    :parameters (?s - step3_type)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (contract_drafted))))

  (:durative-action create_portfolio
    :parameters (?s - step4_type)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (business_name_created)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (portfolio_created))))

  (:durative-action review_contract
    :parameters (?s - step5_type)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (contract_drafted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (contract_reviewed))))

  (:durative-action register_domain
    :parameters (?s - step6_type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (portfolio_created)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (domain_registered))))

  (:durative-action open_bank_account
    :parameters (?s - step7_type)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bank_account_opened))))

  (:durative-action publish_contract
    :parameters (?s - step8_type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (contract_drafted))
      (at start (contract_reviewed))
      (at start (case_studies_written))
      (at start (accounting_setup)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (contract_published))))

  (:durative-action write_case_studies
    :parameters (?s - step9_type)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending ?s))
      (at start (headshots_taken)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (case_studies_written))))

  (:durative-action print_business_cards
    :parameters (?s - step10_type)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (logo_designed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (business_cards_printed))))

  (:durative-action apply_for_permit
    :parameters (?s - step11_type)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (permit_applied_for))))

  (:durative-action take_headshots
    :parameters (?s - step12_type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (portfolio_created)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (headshots_taken))))

  (:durative-action setup_accounting
    :parameters (?s - step13_type)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (accounting_setup))))

  (:durative-action deposit_capital
    :parameters (?s - step14_type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (bank_account_opened)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (capital_deposited))))

  (:durative-action start_bidding
    :parameters (?s - step15_type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (permit_received)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (income_earning_started))))

  (:durative-action brainstorm_business_name
    :parameters (?s - step16_type)
    :duration (= ?duration 10800)
    :condition (and
      (at start (step_pending ?s))
      (at start (accounting_setup)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (business_name_created))))

  (:durative-action purchase_laptop
    :parameters (?s - step17_type)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (laptop_purchased))))

  (:durative-action send_outreach
    :parameters (?s - step18_type)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (clients_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (outreach_sent))))

  (:durative-action receive_permit
    :parameters (?s - step19_type)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (permit_applied_for)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (permit_received))))

  (:durative-action install_software
    :parameters (?s - step20_type)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (laptop_purchased)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (software_installed))))
)