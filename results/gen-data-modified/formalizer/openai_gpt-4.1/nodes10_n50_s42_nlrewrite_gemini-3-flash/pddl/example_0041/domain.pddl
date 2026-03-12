(define (domain deductive-reasoning)
  (:requirements :durative-actions)
  (:predicates
    (formulate_final_logical_conclusion_pending)
    (formulate_final_logical_conclusion_done)
    (verify_validity_of_syllogism_pending)
    (verify_validity_of_syllogism_done)
    (identify_minor_premise_pending)
    (identify_minor_premise_done)
    (gather_preliminary_observations_pending)
    (gather_preliminary_observations_done)
    (define_scope_of_inquiry_pending)
    (define_scope_of_inquiry_done)
    (draft_formal_logical_proof_pending)
    (draft_formal_logical_proof_done)
    (check_for_hidden_logical_fallacies_pending)
    (check_for_hidden_logical_fallacies_done)
    (categorize_observations_pending)
    (categorize_observations_done)
    (synthesize_premises_pending)
    (synthesize_premises_done)
    (establish_major_universal_premise_pending)
    (establish_major_universal_premise_done)
  )

  (:durative-action formulate_final_logical_conclusion
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (formulate_final_logical_conclusion_pending)) (at start (verify_validity_of_syllogism_done)))
    :effect (and (at start (not (formulate_final_logical_conclusion_pending))) (at end (formulate_final_logical_conclusion_done)))
  )

  (:durative-action verify_validity_of_syllogism
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (verify_validity_of_syllogism_pending)) (at start (draft_formal_logical_proof_done)) (at start (categorize_observations_done)))
    :effect (and (at start (not (verify_validity_of_syllogism_pending))) (at end (verify_validity_of_syllogism_done)))
  )

  (:durative-action identify_minor_premise
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (identify_minor_premise_pending)) (at start (establish_major_universal_premise_done)))
    :effect (and (at start (not (identify_minor_premise_pending))) (at end (identify_minor_premise_done)))
  )

  (:durative-action gather_preliminary_observations
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (gather_preliminary_observations_pending))
    :effect (and (at start (not (gather_preliminary_observations_pending))) (at end (gather_preliminary_observations_done)))
  )

  (:durative-action define_scope_of_inquiry
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (define_scope_of_inquiry_pending))
    :effect (and (at start (not (define_scope_of_inquiry_pending))) (at end (define_scope_of_inquiry_done)))
  )

  (:durative-action draft_formal_logical_proof
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (draft_formal_logical_proof_pending)) (at start (synthesize_premises_done)))
    :effect (and (at start (not (draft_formal_logical_proof_pending))) (at end (draft_formal_logical_proof_done)))
  )

  (:durative-action check_for_hidden_logical_fallacies
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (check_for_hidden_logical_fallacies_pending)) (at start (identify_minor_premise_done)))
    :effect (and (at start (not (check_for_hidden_logical_fallacies_pending))) (at end (check_for_hidden_logical_fallacies_done)))
  )

  (:durative-action categorize_observations
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (categorize_observations_pending)) (at start (gather_preliminary_observations_done)))
    :effect (and (at start (not (categorize_observations_pending))) (at end (categorize_observations_done)))
  )

  (:durative-action synthesize_premises
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (synthesize_premises_pending)) (at start (identify_minor_premise_done)) (at start (check_for_hidden_logical_fallacies_done)))
    :effect (and (at start (not (synthesize_premises_pending))) (at end (synthesize_premises_done)))
  )

  (:durative-action establish_major_universal_premise
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (establish_major_universal_premise_pending)) (at start (define_scope_of_inquiry_done)))
    :effect (and (at start (not (establish_major_universal_premise_pending))) (at end (establish_major_universal_premise_done)))
  )
)
