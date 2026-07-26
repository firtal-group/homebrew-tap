from pathlib import Path
import unittest


ROOT = Path(__file__).resolve().parents[1]
WORKFLOW = ROOT / ".github/workflows/mirror-cli-from-cerebro.yml"


class MirrorWorkflowTest(unittest.TestCase):
    def test_formula_and_asset_freshness_are_independent(self) -> None:
        workflow = WORKFLOW.read_text()

        self.assertIn("formula_outdated=", workflow)
        self.assertIn("assets_outdated=", workflow)
        self.assertIn("comm -23", workflow)

    def test_late_desktop_assets_trigger_an_unfiltered_resync(self) -> None:
        workflow = WORKFLOW.read_text()

        self.assertIn("steps.vers.outputs.assets_outdated == 'true'", workflow)
        self.assertIn(
            'gh release download "$TAG" --repo firtal-group/firtal-cerebro\n',
            workflow,
        )
        self.assertNotIn("--pattern 'multica-cli-*'", workflow)


if __name__ == "__main__":
    unittest.main()
