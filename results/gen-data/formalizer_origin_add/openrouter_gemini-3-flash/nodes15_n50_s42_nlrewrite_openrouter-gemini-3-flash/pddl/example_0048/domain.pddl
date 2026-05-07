(define (domain baptism_prep)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (gown_located)
    (iron_warmed)
    (gown_ironed)
    (suit_laid_out)
    (bath_running)
    (collar_washed)
    (booties_fastened)
    (shoes_coat_on)
    (baby_dressed)
    (ribbon_steamed)
    (jewelry_polished)
    (baby_bathed)
    (self_dressed)
    (necklace_gathered)
    (bag_packed)
  )

  (:durative-action locate_gown
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gown_located)))
  )

  (:durative-action warm_iron
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (iron_warmed)))
  )

  (:durative-action iron_gown
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (gown_located)) (at start (iron_warmed)) (at start (collar_washed)) (at start (baby_bathed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gown_ironed)))
  )

  (:durative-action layout_suit
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (suit_laid_out)))
  )

  (:durative-action run_bath
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bath_running)))
  )

  (:durative-action wash_collar
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (collar_washed)))
  )

  (:durative-action fasten_booties
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (gown_located)) (at start (bath_running)) (at start (baby_dressed)) (at start (baby_bathed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (booties_fastened)))
  )

  (:durative-action put_on_shoes_coat
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (gown_located)) (at start (suit_laid_out)) (at start (ribbon_steamed)) (at start (self_dressed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shoes_coat_on)))
  )

  (:durative-action dress_baby
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (gown_located)) (at start (bath_running)) (at start (baby_bathed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (baby_dressed)))
  )

  (:durative-action steam_ribbon
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (gown_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ribbon_steamed)))
  )

  (:durative-action polish_jewelry
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (necklace_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jewelry_polished)))
  )

  (:durative-action bathe_baby
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (bath_running)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (baby_bathed)))
  )

  (:durative-action get_dressed_self
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (suit_laid_out)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (self_dressed)))
  )

  (:durative-action gather_necklace
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (necklace_gathered)))
  )

  (:durative-action pack_bag
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (gown_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bag_packed)))
  )
)