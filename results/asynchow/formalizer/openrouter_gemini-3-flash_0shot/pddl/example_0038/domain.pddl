(define (domain thanksgiving_planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (invitations_sent)
    (idea_conceived)
    (research_done)
    (at_store)
    (supplies_bought)
    (food_baked)
    (setup_complete)
  )

  (:durative-action ask_friends_family
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (invitations_sent)))
  )

  (:durative-action think_special_thing
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (invitations_sent)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (idea_conceived)))
  )

  (:durative-action search_internet
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (invitations_sent)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action drive_to_store
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (idea_conceived)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_store)))
  )

  (:durative-action buy_supplies_food
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (at_store)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_bought)))
  )

  (:durative-action bake_food
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (supplies_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (food_baked)))
  )

  (:durative-action setup_supplies
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (food_baked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (setup_complete)))
  )
)