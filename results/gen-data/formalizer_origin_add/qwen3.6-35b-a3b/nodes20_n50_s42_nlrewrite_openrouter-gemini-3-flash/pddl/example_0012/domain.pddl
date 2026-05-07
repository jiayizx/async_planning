(define (domain freelance_business)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (logo_done)
    (clients_researched)
    (contract_draft)
    (website_created)
    (contract_reviewed)
    (domain_registered)
    (bank_account_set)
    (contract_published)
    (case_studies_written)
    (business_cards_printed)
    (permit_applied)
    (headshots_taken)
    (accounting_setup)
    (capital_deposited)
    (bidding_started)
    (business_name_brainstormed)
    (laptop_purchased)
    (emails_sent)
    (permit_received)
    (software_installed))

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (website_created)) (at start (domain_registered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (logo_done))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (clients_researched))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contract_draft))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (business_name_brainstormed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (website_created))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (contract_draft)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contract_reviewed))))

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (website_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (domain_registered))))

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bank_account_set))))

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (contract_draft)) (at start (contract_reviewed)) (at start (case_studies_written)) (at start (accounting_setup)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contract_published))))

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (headshots_taken)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (case_studies_written))))

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (logo_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (business_cards_printed))))

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (permit_applied))))

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (website_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (headshots_taken))))

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (accounting_setup))))

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (bank_account_set)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (capital_deposited))))

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (permit_received)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bidding_started))))

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (accounting_setup)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (business_name_brainstormed))))

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (laptop_purchased))))

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (clients_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (emails_sent))))

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (permit_applied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (permit_received))))

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (laptop_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (software_installed))))
)