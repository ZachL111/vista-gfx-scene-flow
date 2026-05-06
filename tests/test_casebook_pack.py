"""Regression checks for the vista-gfx-scene-flow casebook."""

from pathlib import Path
import sys
import unittest

ROOT = Path(__file__).resolve().parents[1]
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from casebook.harness import assert_expected, vista_gfx_scene_flow_summary


class CasebookTests(unittest.TestCase):
    def test_expected_summary(self) -> None:
        summary = assert_expected()
        self.assertGreaterEqual(summary["case_count"], 10000)
        self.assertIn("ship", summary["lane_counts"])
        self.assertGreater(summary["score_max"], summary["score_min"])

    def test_named_summary_alias(self) -> None:
        self.assertEqual(vista_gfx_scene_flow_summary(), assert_expected())


if __name__ == "__main__":
    unittest.main()
