(define (domain sumac_use)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (sumac_purchased)
    (lemon_replaced)
    (dips_dressed)
    (meat_marinated)
    (zaatar_prepared)
    (omelet_seasoned)
    (veggies_roasted)
  )

  (:durative-action purchase_sumac
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sumac_purchased)))
  )

  (:durative-action replace_lemon
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (sumac_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lemon_replaced)))
  )

  (:durative-action add_to_dips
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (sumac_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dips_dressed)))
  )

  (:durative-action marinade_meat
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (sumac_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meat_marinated)))
  )

  (:durative-action add_to_zaatar
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (sumac_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (zaatar_prepared)))
  )

  (:durative-action season_omelet
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (sumac_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (omelet_seasoned)))
  )

  (:durative-action roast_veggies
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (sumac_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (veggies_roasted)))
  )
)