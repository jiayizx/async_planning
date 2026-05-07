(define (domain freelance_income)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (name_brainstormed)
    (accounting_setup)
    (website_created)
    (domain_registered)
    (logo_designed)
    (leads_researched)
    (contract_drafted)
    (contract_reviewed)
    (headshots_taken)
    (case_studies_written)
    (bank_account_setup)
    (permit_applied)
    (permit_received)
    (laptop_purchased)
    (software_installed)
    (capital_deposited)
    (emails_sent)
    (cards_printed)
    (contract_published)
    (bidding_started)
  )

  (:durative-action step13_setup_accounting
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (accounting_setup)))
  )

  (:durative-action step16_brainstorm_name
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (accounting_setup)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (name_brainstormed)))
  )

  (:durative-action step4_create_website
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (name_brainstormed)) (at start (accounting_setup)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (website_created)))
  )

  (:durative-action step6_register_domain
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (website_created)) (at start (name_brainstormed)) (at start (accounting_setup)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (domain_registered)))
  )

  (:durative-action step1_design_logo
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (website_created)) (at start (domain_registered)) (at start (name_brainstormed)) (at start (accounting_setup)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (logo_designed)))
  )

  (:durative-action step2_research_clients
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (leads_researched)))
  )

  (:durative-action step3_draft_contract
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contract_drafted)))
  )

  (:durative-action step5_review_contract
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (contract_drafted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contract_reviewed)))
  )

  (:durative-action step12_take_headshots
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (website_created)) (at start (name_brainstormed)) (at start (accounting_setup)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (headshots_taken)))
  )

  (:durative-action step9_write_case_studies
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (headshots_taken)) (at start (website_created)) (at start (name_brainstormed)) (at start (accounting_setup)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (case_studies_written)))
  )

  (:durative-action step7_setup_bank
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bank_account_setup)))
  )

  (:durative-action step11_apply_permit
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (permit_applied)))
  )

  (:durative-action step19_receive_permit
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (permit_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (permit_received)))
  )

  (:durative-action step17_purchase_laptop
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (laptop_purchased)))
  )

  (:durative-action step20_install_software
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (laptop_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (software_installed)))
  )

  (:durative-action step14_deposit_capital
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (bank_account_setup)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (capital_deposited)))
  )

  (:durative-action step18_send_emails
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (leads_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (emails_sent)))
  )

  (:durative-action step10_print_cards
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (logo_designed)) (at start (website_created)) (at start (domain_registered)) (at start (name_brainstormed)) (at start (accounting_setup)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cards_printed)))
  )

  (:durative-action step8_publish_contract
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (contract_drafted)) (at start (contract_reviewed)) (at start (case_studies_written)) (at start (headshots_taken)) (at start (website_created)) (at start (name_brainstormed)) (at start (accounting_setup)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contract_published)))
  )

  (:durative-action step15_start_bidding
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (permit_received)) (at start (permit_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bidding_started)))
  )
)