(define (domain healthy-breakfast)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step-pending ?s - step)
    (step-done ?s - step)
    (meal-plated)
    (breakfast-eaten)
    (ingredients-retrieved)
    (meal-garnished)
    (water-boiled)
    (bread-sliced)
    (spinach-washed)
    (spinach-sauteed)
    (oats-measured)
    (milk-simmered)
    (tea-steeped)
    (coffee-beans-ground)
    (eggs-poached)
    (honey-mixed)
    (eggs-drained)
    (avocado-sliced)
    (avocado-mashed-on-toast)
    (avocado-selected)
    (banana-peeled)
    (eggs-seasoned)
    (eggs-placed-on-toast)
    (orange-juice-poured)
    (pepper-flakes-sprinkled)
    (banana-sliced)
    (spinach-dried)
    (bread-toasted)
    (coffee-brewed)
    (table-set)
    (teapot-heated)
    (tea-poured)
  )

  (:durative-action plate-finished-meal
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (step-pending step1))
      (at start (bread-sliced))
      (at start (bread-toasted))
    )
    :effect (and
      (at start (not (step-pending step1)))
      (at end (step-done step1))
      (at end (meal-plated))
    )
  )

  (:durative-action sit-down-and-eat
    :parameters ()
    :duration (= ?duration 900)
    :condition (and
      (at start (step-pending step2))
      (at start (eggs-drained))
      (at start (eggs-placed-on-toast))
      (at start (orange-juice-poured))
      (at start (pepper-flakes-sprinkled))
    )
    :effect (and
      (at start (not (step-pending step2)))
      (at end (step-done step2))
      (at end (breakfast-eaten))
    )
  )

  (:durative-action retrieve-ingredients
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step-pending step3))
    :effect (and
      (at start (not (step-pending step3)))
      (at end (step-done step3))
      (at end (ingredients-retrieved))
    )
  )

  (:durative-action garnish-with-herbs
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (step-pending step4))
      (at start (avocado-sliced))
      (at start (banana-sliced))
    )
    :effect (and
      (at start (not (step-pending step4)))
      (at end (step-done step4))
      (at end (meal-garnished))
    )
  )

  (:durative-action boil-water
    :parameters ()
    :duration (= ?duration 480)
    :condition (at start (step-pending step5))
    :effect (and
      (at start (not (step-pending step5)))
      (at end (step-done step5))
      (at end (water-boiled))
    )
  )

  (:durative-action slice-bread
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (step-pending step6))
      (at start (ingredients-retrieved))
      (at start (spinach-dried))
    )
    :effect (and
      (at start (not (step-pending step6)))
      (at end (step-done step6))
      (at end (bread-sliced))
    )
  )

  (:durative-action wash-spinach
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step-pending step7))
    :effect (and
      (at start (not (step-pending step7)))
      (at end (step-done step7))
      (at end (spinach-washed))
    )
  )

  (:durative-action saute-spinach
    :parameters ()
    :duration (= ?duration 240)
    :condition (and
      (at start (step-pending step8))
      (at start (spinach-washed))
      (at start (milk-simmered))
    )
    :effect (and
      (at start (not (step-pending step8)))
      (at end (step-done step8))
      (at end (spinach-sauteed))
    )
  )

  (:durative-action measure-oats
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (step-pending step9))
      (at start (ingredients-retrieved))
    )
    :effect (and
      (at start (not (step-pending step9)))
      (at end (step-done step9))
      (at end (oats-measured))
    )
  )

  (:durative-action simmer-milk
    :parameters ()
    :duration (= ?duration 360)
    :condition (and
      (at start (step-pending step10))
      (at start (oats-measured))
    )
    :effect (and
      (at start (not (step-pending step10)))
      (at end (step-done step10))
      (at end (milk-simmered))
    )
  )

  (:durative-action steep-green-tea
    :parameters ()
    :duration (= ?duration 180)
    :condition (and
      (at start (step-pending step11))
      (at start (teapot-heated))
    )
    :effect (and
      (at start (not (step-pending step11)))
      (at end (step-done step11))
      (at end (tea-steeped))
    )
  )

  (:durative-action grind-coffee-beans
    :parameters ()
    :duration (= ?duration 45)
    :condition (at start (step-pending step12))
    :effect (and
      (at start (not (step-pending step12)))
      (at end (step-done step12))
      (at end (coffee-beans-ground))
    )
  )

  (:durative-action poach-eggs
    :parameters ()
    :duration (= ?duration 240)
    :condition (and
      (at start (step-pending step13))
      (at start (water-boiled))
    )
    :effect (and
      (at start (not (step-pending step13)))
      (at end (step-done step13))
      (at end (eggs-poached))
    )
  )

  (:durative-action mix-honey-into-oats
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (step-pending step14))
      (at start (oats-measured))
      (at start (banana-peeled))
    )
    :effect (and
      (at start (not (step-pending step14)))
      (at end (step-done step14))
      (at end (honey-mixed))
    )
  )

  (:durative-action drain-eggs
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (step-pending step15))
      (at start (eggs-poached))
    )
    :effect (and
      (at start (not (step-pending step15)))
      (at end (step-done step15))
      (at end (eggs-drained))
    )
  )

  (:durative-action slice-avocado
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (step-pending step16))
      (at start (avocado-selected))
    )
    :effect (and
      (at start (not (step-pending step16)))
      (at end (step-done step16))
      (at end (avocado-sliced))
    )
  )

  (:durative-action mash-avocado-on-toast
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (step-pending step17))
      (at start (oats-measured))
      (at start (avocado-sliced))
      (at start (table-set))
    )
    :effect (and
      (at start (not (step-pending step17)))
      (at end (step-done step17))
      (at end (avocado-mashed-on-toast))
    )
  )

  (:durative-action select-avocado
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step-pending step18))
    :effect (and
      (at start (not (step-pending step18)))
      (at end (step-done step18))
      (at end (avocado-selected))
    )
  )

  (:durative-action peel-banana
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (step-pending step19))
    :effect (and
      (at start (not (step-pending step19)))
      (at end (step-done step19))
      (at end (banana-peeled))
    )
  )

  (:durative-action season-eggs
    :parameters ()
    :duration (= ?duration 20)
    :condition (and
      (at start (step-pending step20))
      (at start (eggs-placed-on-toast))
    )
    :effect (and
      (at start (not (step-pending step20)))
      (at end (step-done step20))
      (at end (eggs-seasoned))
    )
  )

  (:durative-action place-eggs-on-toast
    :parameters ()
    :duration (= ?duration 45)
    :condition (and
      (at start (step-pending step21))
      (at start (eggs-poached))
    )
    :effect (and
      (at start (not (step-pending step21)))
      (at end (step-done step21))
      (at end (eggs-placed-on-toast))
    )
  )

  (:durative-action pour-orange-juice
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step-pending step22))
    :effect (and
      (at start (not (step-pending step22)))
      (at end (step-done step22))
      (at end (orange-juice-poured))
    )
  )

  (:durative-action sprinkle-pepper-flakes
    :parameters ()
    :duration (= ?duration 10)
    :condition (and
      (at start (step-pending step23))
      (at start (avocado-mashed-on-toast))
    )
    :effect (and
      (at start (not (step-pending step23)))
      (at end (step-done step23))
      (at end (pepper-flakes-sprinkled))
    )
  )

  (:durative-action slice-banana
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (step-pending step24))
      (at start (avocado-sliced))
      (at start (banana-peeled))
    )
    :effect (and
      (at start (not (step-pending step24)))
      (at end (step-done step24))
      (at end (banana-sliced))
    )
  )

  (:durative-action dry-spinach
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (step-pending step25))
      (at start (spinach-washed))
    )
    :effect (and
      (at start (not (step-pending step25)))
      (at end (step-done step25))
      (at end (spinach-dried))
    )
  )

  (:durative-action toast-bread
    :parameters ()
    :duration (= ?duration 180)
    :condition (and
      (at start (step-pending step26))
      (at start (table-set))
    )
    :effect (and
      (at start (not (step-pending step26)))
      (at end (step-done step26))
      (at end (bread-toasted))
    )
  )

  (:durative-action brew-coffee
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step-pending step27))
      (at start (coffee-beans-ground))
    )
    :effect (and
      (at start (not (step-pending step27)))
      (at end (step-done step27))
      (at end (coffee-brewed))
    )
  )

  (:durative-action set-dining-table
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step-pending step28))
      (at start (eggs-poached))
      (at start (orange-juice-poured))
    )
    :effect (and
      (at start (not (step-pending step28)))
      (at end (step-done step28))
      (at end (table-set))
    )
  )

  (:durative-action heat-teapot
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (step-pending step29))
      (at start (ingredients-retrieved))
    )
    :effect (and
      (at start (not (step-pending step29)))
      (at end (step-done step29))
      (at end (teapot-heated))
    )
  )

  (:durative-action pour-tea
    :parameters ()
    :duration (= ?duration 30)
    :condition (and
      (at start (step-pending step30))
      (at start (tea-steeped))
    )
    :effect (and
      (at start (not (step-pending step30)))
      (at end (step-done step30))
      (at end (tea-poured))
    )
  )
)