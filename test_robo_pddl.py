"""Run the PDDLGym version in Robotouille and print the PDDL files used."""
import sys
from pathlib import Path

ROBOTOUILLE_ROOT = Path(__file__).resolve().parent / "baselines" / "robotouille"
ROBOTOUILLE_ENVIRONMENTS = ROBOTOUILLE_ROOT / "environments"
DOMAIN_PDDL = ROBOTOUILLE_ENVIRONMENTS / "robotouille.pddl"
PROBLEM_DIR = ROBOTOUILLE_ENVIRONMENTS / "robotouille"


def print_pddl_files():
    """Load and print the PDDL domain and problem files from Robotouille."""
    if not DOMAIN_PDDL.exists():
        print(f"Domain file not found: {DOMAIN_PDDL}")
        return

    print("=" * 70)
    print("DOMAIN PDDL (environments/robotouille.pddl)")
    print("=" * 70)
    print(DOMAIN_PDDL.read_text(encoding="utf-8"))

    if not PROBLEM_DIR.exists():
        print(f"Problem dir not found: {PROBLEM_DIR}")
        return

    for pddl_file in sorted(PROBLEM_DIR.glob("*.pddl")):
        print("\n" + "=" * 70)
        print(f"PROBLEM PDDL ({pddl_file.relative_to(ROBOTOUILLE_ROOT)})")
        print("=" * 70)
        print(pddl_file.read_text(encoding="utf-8"))


def run_pddlgym_version():
    """Run the PDDLGym version of Robotouille (requires pddlgym installed)."""
    sys.path.insert(0, str(ROBOTOUILLE_ROOT))

    try:
        import pddlgym
    except ImportError:
        print("\n" + "=" * 70)
        print("PDDLGym not installed. Install with: pip install pddlgym")
        print("(Note: Robotouille README marks PDDLGym support as 'currently broken' #37)")
        print("=" * 70)
        return

    try:
        import utils.pddlgym_interface as pddlgym_interface
    except ImportError as e:
        print(f"\nFailed to import Robotouille PDDLGym interface: {e}")
        return

    env_name = "robotouille"
    problem_filename = "hamburger_old.pddl"
    render_fn = lambda obs: None

    print("\n" + "=" * 70)
    print("Running PDDLGym environment...")
    print("=" * 70)

    try:
        env = pddlgym_interface.create_pddl_env(
            env_name, is_test_env=False, render_fn=render_fn,
            problem_filename=problem_filename
        )
        obs, _ = env.reset()
        print(f"Environment created successfully.")
        print(f"State literals (sample): {list(obs.literals)[:5]}...")
    except Exception as e:
        print(f"Error running PDDLGym: {e}")


if __name__ == "__main__":
    print_pddl_files()
    run_pddlgym_version()
