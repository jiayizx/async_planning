(define (domain baptism-dressing)
  (:requirements :typing :durative-actions)
  (:types
    step
    step1type step2type step3type step4type step5type
    step6type step7type step8type step9type step10type
    step11type step12type step13type step14type step15type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (gown_located)
    (iron_warmed)
    (gown_ironed)
    (formal_attire_laid_out)
    (bath_ready)
    (collar_washed)
    (booties_fastened)
    (shoes_and_coat_on)
    (baby_dressed)
    (ribbon_steamed)
    (jewelry_polished)
    (baby_bathed_and_dried)
    (formal_attire_on)
    (cross_necklace_gathered)
    (diaper_bag_packed)
  )

  (:durative-action locate-gown
    :parameters (?s - step1type)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (gown_located))))

  (:durative-action warm-iron
    :parameters (?s - step2type)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (iron_warmed))))

  (:durative-action iron-gown-and-bonnet
    :parameters (?s - step3type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (iron_warmed))
      (at start (collar_washed))
      (at start (baby_bathed_and_dried)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (gown_ironed))))

  (:durative-action layout-formal-attire
    :parameters (?s - step4type)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (formal_attire_laid_out))))

  (:durative-action run-baby-bath
    :parameters (?s - step5type)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bath_ready))))

  (:durative-action wash-lace-collar
    :parameters (?s - step6type)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (collar_washed))))

  (:durative-action fasten-silk-booties
    :parameters (?s - step7type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (baby_dressed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (booties_fastened))))

  (:durative-action put-on-shoes-and-coat
    :parameters (?s - step8type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (ribbon_steamed))
      (at start (formal_attire_on)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shoes_and_coat_on))))

  (:durative-action dress-baby
    :parameters (?s - step9type)
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending ?s))
      (at start (baby_bathed_and_dried)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (baby_dressed))))

  (:durative-action steam-ribbon
    :parameters (?s - step10type)
    :duration (= ?duration 360)
    :condition (and
      (at start (step_pending ?s))
      (at start (gown_located)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ribbon_steamed))))

  (:durative-action polish-jewelry
    :parameters (?s - step11type)
    :duration (= ?duration 720)
    :condition (and
      (at start (step_pending ?s))
      (at start (cross_necklace_gathered)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (jewelry_polished))))

  (:durative-action bathe-and-dry-baby
    :parameters (?s - step12type)
    :duration (= ?duration 1500)
    :condition (and
      (at start (step_pending ?s))
      (at start (bath_ready)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (baby_bathed_and_dried))))

  (:durative-action get-dressed
    :parameters (?s - step13type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (formal_attire_laid_out)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (formal_attire_on))))

  (:durative-action gather-cross-necklace
    :parameters (?s - step14type)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cross_necklace_gathered))))

  (:durative-action pack-diaper-bag
    :parameters (?s - step15type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (gown_located)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (diaper_bag_packed))))
)