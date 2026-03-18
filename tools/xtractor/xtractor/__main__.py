"""Entry point for python -m xtractor run."""

import sys

from .main import run

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "run":
        run()
    else:
        run()
