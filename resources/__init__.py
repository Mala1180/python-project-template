from pathlib import Path

DIR = Path(__file__).parent

def get_resource_path(filename: str) -> Path:
    """
    Get the absolute path to a resource file.
    :param filename: The name of the resource file.
    :return: The absolute path to the resource file.
    """
    return DIR / filename